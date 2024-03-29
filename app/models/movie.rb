class Movie < ApplicationRecord
  has_many :movie_people, :class_name => 'MoviePeople'
  has_many :people, through: :movie_people

  validates :title, uniqueness: true
end
