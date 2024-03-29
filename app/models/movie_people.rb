class MoviePeople < ApplicationRecord
  belongs_to :movie
  belongs_to :person
end