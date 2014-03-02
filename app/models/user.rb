class User < ActiveRecord::Base
  has_many :movies
  validates :email, presence: true
end
