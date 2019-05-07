class CompaniesController < ApplicationController
  def edit
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to users_path
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    Company.find(params[:id]).destroy
    redirect_to users_path
  end


  private

  def company_params
    params.require(:company).permit(:name, :address, :logo, :website, :bio)

  end







end
