require 'rails_helper'

RSpec.describe 'Riders API', type: :request do

    # initialize test data
  let!(:riders) { create_list(:rider, 10) }
  let(:rider_id) { riders.first.id }

    # Test suite for GET /riders
  describe 'GET /riders' do
    # make HTTP get request before each example
    before { get '/api/v1/riders' }
    
    it 'returns riders' do
        # Note `json` is a custom helper to parse JSON responses
        expect(json).not_to be_empty
        expect(json['total']).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end