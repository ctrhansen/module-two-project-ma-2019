class CompaniesController < ApplicationController
  def edit
    @company = Company.find(params[:id])
  end

  def new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path
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
      redirect_to companies_path(@company)
    else
      render :edit
    end
  end

  def destroy
    Company.find(params[:id]).destroy
    redirect_to companies_path
  end


  private

  def company_params
    params.permit(company: [:name, :address, :logo, :website, :bio])
  end







end
