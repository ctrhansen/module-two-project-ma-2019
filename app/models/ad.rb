class Ad < ApplicationRecord
    belongs_to :client
    has_many :campaigns
    has_many :employees, through: :campaigns
    validates_presence_of :start_date, :end_date
    validate :end_date_is_after_start_date

    def name_type
        "#{self.name}, Ad Type: #{self.ad_type} "
    end

    def ad_cost
        self.cost ? self.cost : 0
    end

    def end_date_is_after_start_date
        return if end_date.blank? || start_date.blank?
      
        if end_date < start_date
          errors.add(:end_date, "cannot be before the start date") 
        end 
      end

      def currency
        "Dollars"
      end

      def capitalize
        self.ad_type.capitalize 
      end
    

    

end
