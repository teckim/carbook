require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(name: 'John Doe', password: 'password', password_confirmation: 'password',
                        username: 'testusername')
  end

  context 'Username attribute' do
    it 'should be present' do
      subject.username = nil
      expect(subject).to_not be_valid
    end

    it 'Username should be unique' do
      described_class.create!(name: 'John Doe', password: 'password', password_confirmation: 'password',
                              username: 'testusernameexists')
      subject.username = 'testusernameexists'
      expect(subject).to_not be_valid
    end
  end

  context 'Password attribute' do
    it 'Password attribute should be present' do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it 'Password should be confirmed' do
      subject.password = 'password'
      subject.password_confirmation = 'wordpass'
      expect(subject).to_not be_valid
    end

    it 'Password should be minimum 6 characters' do
      subject.password = '12345'
      subject.password_confirmation = '12345'
      expect(subject).to_not be_valid
    end
  end

  context 'Password confirmation attribute' do
    it 'Password confirmation attribute should be present' do
      subject.password = 'password'
      subject.password_confirmation = nil
      expect(subject).to_not be_valid
    end
  end
end
