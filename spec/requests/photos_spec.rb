require 'rails_helper'

RSpec.describe 'Photos API', type: :request do

    # initialize test data
  let(:page) { 1 }
  let(:perPage) { 10 }

    # Test suite for GET /photo/:page/:perPage
  describe 'GET /photos/:page/:perPage' do
    # make HTTP get request before each example
    before(:each) do
        @photo = {:farm=>66, :id=>"50391240878", :isfamily=>0, :isfriend=>0, :ispublic=>1, :owner=>"57919329@N02", :secret=>"49f966f78d", :server=>"65535", :title=>"untitled-85.jpg"}
    end
    before { get "/api/v1/photos/?page=#{page}&perPage=#{perPage}" }
    
    it 'returns photos' do
        # Note `json` is a custom helper to parse JSON responses
        expect(json).not_to be_empty
        expect(json['photos']['photo'].size).to eq(10)
        #expect(json['photos']['photo'].first).to eq(@photo)
        # { farm: 66, id: '50391240878', isfamily: 0, isfriend: 0, ispublic: 1, owner: '57919329@N02', secret: '49f966f78d', server: '65535', title: 'untitled-85.jpg' }
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

#   # Test suite for POST /contests
#   describe 'POST /contests' do
#     # valid payload
#     let(:valid_attributes) { { firstname: 'Kelvin', lastname: 'Leo', email: 'Kelvin@gmail.com', slogan: 'This is a test Slogan' } }

#     context 'when the request is valid' do
#       before { post '/api/v1/contests', params: valid_attributes }

#       it 'creates a contest' do
#         expect(json['firstname']).to eq('Kelvin')
#       end

#       it 'returns status code 201' do
#         expect(response).to have_http_status(201)
#       end
#     end

#     context 'when the request is invalid' do
#       before { post '/api/v1/contests', params: { firstname: 'Foobar' } }

#       it 'returns status code 400' do
#         expect(response).to have_http_status(400)
#       end

#       it 'returns a validation failure message' do
#         expect(response.body)
#           .to match(/Unable to save contest/)
#       end
#     end
#   end

end