class Person < ApplicationRecord
  has_many :movie_people, :class_name => 'MoviePeople'
  has_many :movies, through: :movie_people
end
