class User < ApplicationRecord
  has_many :items
  has_many :user_neighborhoods
  has_many :neighborhoods, :through => :user_neighborhoods
end
