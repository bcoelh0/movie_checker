class User < ActiveRecord::Base
  has_many :movies
  validates :email, presence: true

  def check_all_movies
  end
end
