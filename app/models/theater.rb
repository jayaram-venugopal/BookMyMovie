class Theater < ApplicationRecord
  validates_presence_of :name,  :total_seates, on: :create, message: "can't be blank"
  validates_numericality_of :total_seates, on: :create, message: "is not a number"

  has_many :shows
end
