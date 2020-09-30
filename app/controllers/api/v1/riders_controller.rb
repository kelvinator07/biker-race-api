class Api::V1::RidersController < ApplicationController

    def index
        @riders = Rider.all
        render json: { total: @riders.size, riders: @riders }, status: 200
    end
    
end
