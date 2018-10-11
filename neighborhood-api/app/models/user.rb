class User < ApplicationRecord
  has_many :items
  has_many :user_communities
  has_many :communities, :through => :user_communities
  has_many :transactions
end
