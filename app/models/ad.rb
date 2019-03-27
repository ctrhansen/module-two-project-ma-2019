class Ad < ApplicationRecord
    belongs_to :client
    has_many :campaigns
    has_many :employees, through: :campaigns

    def list_of_ads_by_employee
         

    end

    def  

    end



end
