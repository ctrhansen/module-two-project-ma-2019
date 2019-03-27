class Employee < ApplicationRecord
    belongs_to :company
    has_many :campaigns
    has_many :ads, through: :campaigns

   



end
