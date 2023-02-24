class Show < ActiveRecord::Base

    def self.highest_rating
        maximum(:rating)
    end

    def self.most_popular_show
        cools = maximum(:rating)
        all.find do |popular|
            if popular.rating == cools
                popular
            end
        end
    end

    def self.lowest_rating
        minimum(:rating)       
    end

    def self.least_popular_show
        cools = minimum(:rating)
        all.find do |popular|
            if popular.rating == cools
                popular
            end
        end
    end

    def self.ratings_sum
        sum(:rating)
    end

    def self.popular_shows
        pops = []
        all.collect do |popular|
            if popular.rating > 5
                pops << popular
            end
        end
        pops
    end

    def self.shows_by_alphabetical_order
        order(:name)
    end



end