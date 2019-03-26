class EmployeesController < ApplicationController

    
#create
def new
    @employee = Employee.new
    @company = Company.all
end

def create
    @employee = Employee.create(ad_params)
end


#read
def show
    @employee = Employee.find(params[:id])
end

def index
    @employees = Employee.all
end

#update
def edit
    @employee = Employee.find(params[:id])
end

def update
    @employee = Employee.find(params[:id])
    @employee = Employee.update(ad_params)
end

#destroy
def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to '/employees'
end


#strong_params
def employee_params
    params.require(:employee).permit(:name, :title, :company_id, :email, :photo)
end

end
