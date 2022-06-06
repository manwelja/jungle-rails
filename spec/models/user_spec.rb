require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Validations' do
    it 'should validate that a password matches its password_confirmation' do
      @user= User.new(first_name: "FirstName", last_name: "LastName", email: "email@test.com", password:"123456", password_confirmation:"1234567")
      expect(@user).to_not be_valid 
    end
    it 'should validate that a password and a password_confirmation are present' do
      @user1= User.new(first_name: "FirstName", last_name: "LastName", email: "email@test.com", password:nil, password_confirmation:"1234567")
      @user2= User.new(first_name: "FirstName", last_name: "LastName", email: "email@test.com", password:"123456", password_confirmation:nil)
      expect(@user1).to_not be_valid 
      expect(@user2).to_not be_valid 
    end
    it 'should validate that an email address is unique' do
      @user1= User.new(first_name: "FirstName", last_name: "LastName", email: "email@test.com", password:"123456", password_confirmation:"123456")
      @user2= User.new(first_name: "FirstName", last_name: "LastName", email: "email@test.com", password:"123456", password_confirmation:"123456")
      expect(@user1).to be_valid
    end
    it 'should validate thath email, first_name and last_name are present' do
      @user1= User.new(first_name: nil, last_name: "LastName", email: "email@test.com", password:"123456", password_confirmation:"123456")
      @user2= User.new(first_name: "FirstName", last_name:nil, email: "email@test.com", password:"123456", password_confirmation:"123456")
      @user3= User.new(first_name: "FirstName", last_name: "LastName", email: nil, password:"123456", password_confirmation:"123456")
      expect(@user1).to_not be_valid
      expect(@user2).to_not be_valid
      expect(@user3).to_not be_valid
    end
    it 'should validate that a password is a minimum length' do
      @user= User.new(first_name: nil, last_name: "LastName", email: "email@test.com", password:"1", password_confirmation:"1")
      expect(@user).to_not be_valid
    end
 
  end
end
