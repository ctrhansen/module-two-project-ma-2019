class CampaignsController < ApplicationController

  def index
    @campaign = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    if @campaign.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    @campaign = Campaign.find(params[:id])
    @employee = Employee.find(params[:id])
    @ad = Ad.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:id])
    if @campaign.update(campaign_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    Campaign.find(params[:id]).destroy
    redirect_to users_path
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :ad_id, :employee_id, :client)
  end
end
