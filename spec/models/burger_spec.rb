require 'spec_helper'

describe Burger do
  it 'gets a success response from the home page' do
    get '/'
    expect(response.status).to eq(200)
  end

end
