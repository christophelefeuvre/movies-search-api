require 'rails_helper'

RSpec.describe MovieService do
  let(:movie) { FactoryBot.build(:movie) }
  let(:person) { FactoryBot.create(:person) }

  describe "#create_movie" do
    let(:service) { described_class.new movie, person  }

    context 'without a person' do
      it 'should save the movie without person' do
        movie_created = service.create_movie
        expect(movie_created).to be_valid
      end
    end

    context 'with a person' do
      it 'should save the movie with the person' do
        pending 'todo'
      end
      end
    end

    context 'with a person who doesnt exist' do
    it 'should save the movie without person' do
      pending 'todo'
    end
  end
end
