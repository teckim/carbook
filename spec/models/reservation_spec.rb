require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before(:all) do
    @user = User.new(username: "john doe1#{SecureRandom.hex}", password: '123456', password_confirmation: '123456')

    @car = Car.new(brand: 'BMW', description: 'car details1', image: 'some url1', model: '2019', price: 4000)
    @reservation = Reservation.new(city: 'Imphal', date: '23/8/2022')
    @reservation.user = @user
    @reservation.car = @car
  end

  describe 'Model validations' do
    it 'is valid with valid attributes' do
      expect(@reservation).to be_valid
    end

    it 'should have the city' do
      expect(@reservation.city).to eq('Imphal')
    end
    it 'should have the date' do
      expect(@reservation.date).to eq('Tue, 23 Aug 2022'.to_date)
    end
    it 'should not have blank city' do
      @reservation.city = ''
      expect(@reservation).to_not be_valid
    end
    it 'should not have blank date' do
      @reservation.date = ''
      expect(@reservation).to_not be_valid
    end
    it 'should not have city less than 3 characters' do
      @reservation.city = 'Im'
      expect(@reservation).to_not be_valid
    end
    it 'should not have city more than 50 characters' do
      @reservation.city = 'Imphal' * 10
      expect(@reservation).to_not be_valid
    end
    it 'should not have date that is blank' do
      @reservation.date = ''
      expect(@reservation).to_not be_valid
    end
    it 'should not have date that is more than 10 characters' do
      @reservation.date = '23/8/2022' * 2
      expect(@reservation).to_not be_valid
    end
  end
end
