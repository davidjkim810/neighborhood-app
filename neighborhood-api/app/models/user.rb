class User < ApplicationRecord
  has_many :items
  belongs_to :community
end
