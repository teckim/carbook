class V1::AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login

  # POST /auth/login
  def login
    @user = User.find_by_username(params[:username])
    if @user&.authenticate(params[:password])
      begin
        token = JsonWebToken.encode(user_id: @user.id)
        time = Time.now + 24.hours.to_i
        render json: {
                 token:,
                 exp: time.strftime('%m-%d-%Y %H:%M'),
                 user: { id: @user.id, username: @user.username, name: @user.name }
               },
               status: :ok
      rescue StandardError => e
        if e.instance_of?(NilClass)
          render status: :internal_server_error
        else
          render json: {
                   success: false,
                   message: e.class.to_s,
                   errors: [{ detail: e.message }]
                 },
                 status: :internal_server_error
        end
      end
    else
      render json: { error: 'Unauthorized, wrong username or password' }, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end
