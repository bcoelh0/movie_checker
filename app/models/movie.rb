class Movie < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :user, presence: true

  def exists?
    page = HTTParty.get(
      "http://thepiratebay.se/search/#{URI::encode(title)}/0/7/202"
    )
    if page.body.include? "class=\"detLink\""
      true
    else
      false
    end
  end
end
