# frozen_string_literal: true

require 'faker'

RSpec.configure do |config|
  config.before(:all) { Faker::UniqueGenerator.clear }
end
