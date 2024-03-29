require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'create a Movie' do
    context 'when everything is fine' do
      let(:movie) { FactoryBot.create(:movie) }

      it 'is valid' do
        movie = FactoryBot.build(:movie)
        expect(movie).to be_valid
      end

      it 'title must be uniq' do
        movie_duplicated = FactoryBot.build(:movie, title: movie.title)
        expect(movie_duplicated).not_to be_valid
      end
    end
  end
end