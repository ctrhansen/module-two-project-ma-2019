class Campaign < ApplicationRecord
    belongs_to :employee
    belongs_to :ad
    has_many :reports

    def avg_roi
        (self.reports.map{|r| r.roi}.inject(:+).to_f/self.reports.size).to_i
    end

    def total_views
        (self.reports.map{|r|r.views}.inject(:+))
    end

    def total_clicks
        (self.reports.map{|r|r.clicks}.inject(:+))
    end

    # def employees_per_campaign
    #     self.employee.count 
    # end
    









end
