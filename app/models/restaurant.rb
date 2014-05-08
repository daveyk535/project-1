class Restaurant < ActiveRecord::Base
  has_many :burgers
end


#Code for Yelp! lookup 
# def restaurants.near(city, state, zip)
#     # construct a Yelp! client instance for API
#     client = Yelp::Client.new

#     include Yelp::V2::Search::Request

#     # search for businesses via location (address, neighbourhood, city, state, zip, country, latitude, longitude)'
#     request = Location.new(:term => "#{name}", :city => "San Francisco", :state => "CA", :postal_code => "#{zip}")
#     @response = client.search(request)
