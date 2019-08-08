class Movie < ApplicationRecord
  validates_presence_of :title, :release_dates, :age_rating, :poster_url, :duration, on: :create, message: "can't be blank"
  validates_numericality_of :duration, on: :create, message: "is not a number"
  
  has_many :shows

  def self.random_image
    order('RANDOM()').first.poster_url
  end
end
