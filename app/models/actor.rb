class Actor < ApplicationRecord
  has_many :movies, through: :actor_movies
  def full_name
    "#{first_name} #{last_name}"
  end
end
