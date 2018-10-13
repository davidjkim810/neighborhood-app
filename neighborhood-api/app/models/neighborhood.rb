class Neighborhood < ApplicationRecord
  has_many :user_neighborhoods
  has_many :users, :through => :user_neighborhoods
end
