class Report < ApplicationRecord
    belongs_to :campaign

   def amount 
     "Dollars"
   end

   def roi(r, i)
      ret = ((r - i) / i)
   end


end
