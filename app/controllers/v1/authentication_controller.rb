class V1::AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login

  # POST /auth/login
  def login
    @user = User.find_by_username!(params[:username])
    if @user&.authenticate(params[:password])
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i
      render json: {
               token:,
               exp: time.strftime('%m-%d-%Y %H:%M'),
               user: { id: @user.id, username: @user.username, name: @user.name }
             },
             status: :ok
    else
      render json: { error: 'Unauthorized, wrong username or password' }, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end
