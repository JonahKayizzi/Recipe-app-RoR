require 'rails_helper'

RSpec.describe Food, type: :model do
<<<<<<< HEAD
  subject do
    User.create(name: 'Tom', email: 'tom@gmail.com', password: '123abc', password_confirmation: '123abc')
  end
  before { @food = Food.create(name: 'apple', measurement_unit: 'kg', price: 10, quantity: 10, user: subject) }
=======
  # tests go here

  before :each do
    @user = User.create(
      name: 'Microverse',
      email: 'd@gmail.com',
      password: 'password'
    )

    @food = Food.create(name: 'orange', price: 12, quantity: 5, measurement_unit: 'pieces', user: @user)
  end
>>>>>>> 423a220 (Rebase current development with integration tests branch)

  context 'Test food validations' do
    it 'is valid with valid attributes' do
      expect(@food).to be_valid
    end

    it 'name must not be blank' do
      @food.name = nil
      expect(@food).to_not be_valid
    end

    it 'price must not be blank' do
      @food.price = nil
      expect(@food).to_not be_valid
    end

    it 'price must be and integer' do
      @food.price = 'foo'
      expect(@food).to_not be_valid
    end

    it 'quantity must not be blank' do
      @food.quantity = nil
      expect(@food).to_not be_valid
    end

    it 'quantity must be and integer' do
      @food.quantity = 'foo'
      expect(@food).to_not be_valid
    end
  end
end
