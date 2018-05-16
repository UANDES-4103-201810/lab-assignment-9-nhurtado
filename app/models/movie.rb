class Movie < ApplicationRecord
  belongs_to :category
  belongs_to :director
  belongs_to :address
  has_many :actors, through: :actor_movies
  accepts_nested_attributes_for :address
end
