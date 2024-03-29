require 'rails_helper'

RSpec.describe TmdbApi do

  context 'Initialization' do
    let(:params){ {'title'=> 'dune', 'page'=> 1} }
    let(:service) { described_class.new params}

    describe 'gold path' do
      it 'everything is fine' do
        response = service.search_by_title
        response_hashed = JSON.parse(response)
        expect(response_hashed['page']).not_to be_nil
      end
    end
  end
end