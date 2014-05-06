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

#test e-mail presence, format, uniqueness incuding case-sensitivity (FactoryGirl, cook_cook_with auth)
# test last name presence and length
#test password_digest, password and password_confirmation for presence and password mismatch (Listing 6.25)
#test password length (6 chars)
#test for length (too short and too long)

#rails generate migration add_index_to_users_email
