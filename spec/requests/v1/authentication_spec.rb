require 'swagger_helper'

RSpec.describe 'v1/authentication', type: :request do
  path '/v1/auth/login' do
    post('Login') do
      consumes 'application/json'
      parameter name: :login, in: :body, schema: {
        type: :object,
        properties: {
          username: { type: :string },
          password: { type: :string }
        },
        required: %w[username password]
      }

      response(200, 'successful') do
        unless User.find_by_username('api_doc_user')
          User.create!(name: 'John Doe', password: 'password', password_confirmation: 'password',
                       username: 'api_doc_user')
        end

        let(:login) { { username: 'api_doc_user', password: 'password' } }

        schema type: :object,
               properties: {
                 username: { type: :string },
                 password: { type: :string }
               }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
