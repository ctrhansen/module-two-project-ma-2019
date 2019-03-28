class Employee < ApplicationRecord
    belongs_to :company
    has_many :campaigns
    has_many :ads, through: :campaigns

    def number_ads_per_employee
        self.ads.count
    end

    def number_campaigns_per_employee
        self.campaigns.count
    end


end
