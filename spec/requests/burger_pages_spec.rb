require 'spec_helper'

describe "BurgerPages" do
  it 'gets a success response from the home page' do
    get '/'
    expect(response).to eq(200)
  end
end