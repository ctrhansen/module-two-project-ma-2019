class Ad < ApplicationRecord
    belongs_to :client
    has_many :campaigns
    has_many :employees, through: :campaigns

    



end
