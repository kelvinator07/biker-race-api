class Api::V1::PhotosController < ApplicationController
    require 'faraday'

    def index
        # params
        page = params[:page]
        perPage = params[:perPage]

        url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=736e2f4414385f87df595b0691038f22&tags=bikerace,BoulderBikeTour&page=#{page}&per_page=#{perPage}&format=json&nojsoncallback=1"
        
        #Rest Client
        res = Faraday.get url
    
        render json: res.body
      end

end
