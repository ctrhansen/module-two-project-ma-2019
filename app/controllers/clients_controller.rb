class ClientsController < ApplicationController

  def index
    @client = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to client_path
    else
      render :new
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to client_path(@client)
    else
      render :edit
    end
  end

  def destroy
    Client.find(params[:id]).destroy
    redirect_to client_path
  end

  private

  def client_params
    params.require(:client).permit(:name, :company_id, :logo)
  end
end
