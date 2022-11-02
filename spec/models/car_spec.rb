require 'rails_helper'

RSpec.describe Car, type: :model do
  before :each do
    @user = User.create(name: 'John Doe', password: 'password', password_confirmation: 'password',
                        username: 'testusername')
    @car = Car.create(user_id: @user.id, model: 'Lamborgini', description: 'cool car', price: 250, image: 'https://images.unsplash.com/photo-1519245659620-e859806a8d3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
  end

  context 'model validations' do
    it 'should be invalid without no model name' do
      @car.model = nil
      expect(@car).to_not be_valid
    end

    it 'should be invalid without no user id' do
      @car.user_id = nil
      expect(@car).to_not be_valid
    end

    it 'should be invalid without no description' do
      @car.description = nil
      expect(@car).to_not be_valid
    end

    it 'should be invalid without no image given' do
      @car.image = nil
      expect(@car).to_not be_valid
    end

    it 'should be invalid without no price mentioned' do
      @car.price = nil
      expect(@car).to_not be_valid
    end

    it 'should be invalid with a negative price' do
      @car.price = -10
      expect(@car).to_not be_valid
    end

    it 'should be valid with a positive price' do
      @car.price = 10
      expect(@car).to be_valid
    end
  end
end
