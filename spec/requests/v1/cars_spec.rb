require 'swagger_helper'

RSpec.describe 'v1/cars', type: :request do
  path '/v1/cars' do
    get('list cars') do
      response(200, 'successful') do
        security [Bearer: {}]
        let(:Bearer) { "Bearer #{generate_token}" }
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

    post('create car') do
      response(200, 'successful') do
        security [Bearer: {}]
        let(:Bearer) { "Bearer #{generate_token}" }
        consumes 'application/json'
        parameter name: :car, in: :body, schema: {
          type: :object,
          properties: {
            brand: { type: :string },
            model: { type: :string },
            image: { type: :string },
            description: { type: :string },
            price: { type: :integer },
            user_id: { type: :integer }
          },
          required: %w[brand model image description price user_id]
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

  path '/v1/cars/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show car') do
      response(200, 'successful') do
        security [Bearer: {}]
        let(:Bearer) { "Bearer #{generate_token}" }
        let(:id) { '123' }

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

    patch('update car') do
      response(200, 'successful') do
        security [Bearer: {}]
        let(:Bearer) { "Bearer #{generate_token}" }
        let(:id) { '123' }

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

    put('update car') do
      response(200, 'successful') do
        security [Bearer: {}]
        let(:Bearer) { "Bearer #{generate_token}" }
        let(:id) { '123' }

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

    delete('delete car') do
      response(200, 'successful') do
        security [Bearer: {}]
        let(:Bearer) { "Bearer #{generate_token}" }
        let(:id) { '123' }

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
