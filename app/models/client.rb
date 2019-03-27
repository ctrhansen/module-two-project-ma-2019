class Client < ApplicationRecord
    belongs_to :company
    has_many :ads

    def total_ads
        self.ads.count
    end

    def most_recent_ads
        self.ads.sort_by{|p| p.created_at}.first(3)
    end

    def most_expensive_ad
        self.ads.sort_by{|p| p.ad_cost}.reverse.first
    end
end
