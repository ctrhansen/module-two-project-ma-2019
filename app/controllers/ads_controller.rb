class AdsController < ApplicationController

    #create
    def new
        @ad = Ad.new
        @client = Client.all
    end

    def create


        @ad = Ad.create(ad_params)
        # @ad.save
        redirect_to users_path
    end


    #read
    def show
        @ad = Ad.find(params[:id])
    end

    def index
        @ads = Ad.all
    end

    #update
    def edit
        @ad = Ad.find(params[:id])
    end

    def update
        @ad = Ad.find(params[:id])
        @ad = Ad.update(ad_params)
    end

    #destroy
    def destroy
        @ad = Ad.find(params[:id])
        @ad.destroy
        redirect_to users_path
    end


    #strong_params
    def ad_params
        params.require(:ad).permit(:name, :client_id, :ad_type, :picture, :location, :target_age, :copy, :start_date, :end_date, :cost)
    end


end
