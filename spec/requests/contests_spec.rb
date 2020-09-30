require 'rails_helper'

RSpec.describe 'Contests API', type: :request do

    # initialize test data
  let!(:contests) { create_list(:contest, 1) }
  let(:contest_id) { contests.first.id }

    # Test suite for GET /contests
  describe 'GET /contests' do
    # make HTTP get request before each example
    before { get '/api/v1/contests' }
    
    it 'returns contests' do
        # Note `json` is a custom helper to parse JSON responses
        expect(json).not_to be_empty
        expect(json['total']).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for POST /contests
  describe 'POST /contests' do
    # valid payload
    let(:valid_attributes) { { firstname: 'Kelvin', lastname: 'Leo', email: 'Kelvin@gmail.com', slogan: 'This is a test Slogan' } }

    context 'when the request is valid' do
      before { post '/api/v1/contests', params: valid_attributes }

      it 'creates a contest' do
        expect(json['firstname']).to eq('Kelvin')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/api/v1/contests', params: { firstname: 'Foobar' } }

      it 'returns status code 400' do
        expect(response).to have_http_status(400)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Unable to save contest/)
      end
    end
  end

end