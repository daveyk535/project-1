require 'spec_helper'


  describe 'User' do
    it 'should have a first name' do
      user = User.create(last_name: 'test_last')
      user.should_not be_valid
      #expect(@user).to be_valid
    end
  end

  # describe 'when name is too long' do
  #   @user = User.create(first_name: "a" * 51)
  #   @user.should_not be_valid

#test e-mail and last name
#test for length (too short and too long)
