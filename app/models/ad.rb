class Ad < ApplicationRecord
    belongs_to :client
    has_many :campaigns
    has_many :employees, through: :campaigns

    def name_type
        "#{self.name}, Ad Type: #{self.ad_type} "
    end

    def ad_cost
        self.cost ? self.cost : 0
    end

end
