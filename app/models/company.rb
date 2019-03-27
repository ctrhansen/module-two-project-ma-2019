class Company < ApplicationRecord
    has_many :employees
    has_many :clients

   def total_employees
       self.employees.count
   end

    def total_clients
        self.clients.count
    end


end
