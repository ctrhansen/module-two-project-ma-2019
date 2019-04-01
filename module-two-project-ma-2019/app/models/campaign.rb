class Campaign < ApplicationRecord
    belongs_to :employee
    belongs_to :ad
    has_many :reports
end
