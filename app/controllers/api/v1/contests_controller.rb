class Api::V1::ContestsController < ApplicationController
    
    # GET /contests
    def index
        @contests = Contest.all
        render json: { total: @contests.size, contests: @contests }, status: 200
    end

    # POST /contests
    def create
        @contest = Contest.new(contest_param)
        if  @contest.save
            render json: @contest, status: 201
        else
            render json: { error: 'Unable to save contest' }, status: 400
        end

        #respond_to do |format|
         #   if @contest.save
          #    format.json { render json: @contest, status: :created}
           # else
            #  format.json { render json: @contest.errors, status: :unprocessable_entity }
            #end
        #end
    end

    private
    
    def contest_param
        params.permit(:firstname, :lastname, :email, :slogan)
    end
end
