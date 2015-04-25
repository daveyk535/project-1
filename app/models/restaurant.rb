class Restaurant < ActiveRecord::Base
  has_many :burgers
  has_many :reviews
end
