class Report < ApplicationRecord
    belongs_to :campaign

   def amount
     "Dollars"
   end


end
