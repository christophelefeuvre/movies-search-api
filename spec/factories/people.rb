# frozen_string_literal: true

FactoryBot.define do
  factory :person do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    born { Faker::Date.birthday }
  end
end