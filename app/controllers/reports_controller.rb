class ReportsController < ApplicationController

#create
def new
    @report = Report.new
end

def create
    @report = Report.create(report_params)
end


#read
def show
    @report = Report.find(params[:id])
    respond_to do |format|
        format.html
        format.pdf do
            pdf = Prawn::Document.new
            pdf.text "Hello World"
            send_data pdf.render, filename: "report_#{@report.report_type}.pdf",
                                  type: "application/pdf",
                                  disposition: "inline"
        end
    end
end

def index
    @reports = Report.all
end

#update
def edit
    @report = Report.find(params[:id])
end

def update
    @report = Report.find(params[:id])
    @report = Report.update(report_params)
end

#destroy
def destroy
    @report = Report.find(params[:id])
    @report.destroy
    redirect_to '/reports'
end


#strong_params
def report_params
    params.require(:report).permit(:campaign_id, :name, :report_type, :client, :duration, :roi, :impressions, :views, :clicks, :reach, :conversions)
end

end
