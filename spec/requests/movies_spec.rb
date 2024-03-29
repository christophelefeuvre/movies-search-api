require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  let(:movie) { FactoryBot.create(:movie) }

  describe "GET /movies" do
    it 'returns 200 OK' do
      get :index
      expect(response).to have_http_status(:ok)
    end

  end

  describe "POST /movies" do
    it 'returns 201 created' do
      post :create, params: { movie: FactoryBot.attributes_for(:movie) }
      expect(response).to have_http_status(:created)
    end
  end
end
