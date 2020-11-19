class Show < ActiveRecord::Base
    def self.highest_rating
        all.order(:rating).last[:rating]
    end

    def self.most_popular_show
        all.order(:rating).last
    end

    def self.lowest_rating
        all.order(:rating).first[:rating]
    end

    def self.least_popular_show
        all.order(:rating).first
    end

    def self.ratings_sum
        all.sum(:rating)
    end

    def self.popular_shows
        all.where("rating > ?",5)
    end

    def self.shows_by_alphabetical_order
        all.order(:name)
    end


end