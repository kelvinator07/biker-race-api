class Api::V1::PhotosController < ApplicationController
    require 'faraday'

    def index
        # params
        page = params[:page]
        perPage = params[:perPage]

        url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=#{ENV["FLICKR_API_KEY"]}&tags=bikerace,BoulderBikeTour&page=#{page}&per_page=#{perPage}&format=json&nojsoncallback=1"
        
        #Rest Client
        res = Faraday.get url
    
        render json: res.body
      end

end
