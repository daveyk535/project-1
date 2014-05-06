require 'spec_helper'

describe "UserPages" do
subject { page }

  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "First Name",   with: "Example First"
        fill_in "Last Name",    with: "Example Last"
        fill_in "Email",        with: "user@example.com"
        fill_in "Twitter",      with: "tweetboy"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation", with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end

#7.1.3 factory girl