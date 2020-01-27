require "pry"
require_relative "./scraper"

class CoffeeKraze::Shop
    attr_accessor :number, :name, :about, :location


    @@all = []

    def self.all_shops
        #should print out all shop instances
        @@all
    end

    def initialize(shop_details)
        @name= shop_details[:name]
        @number= shop_details[:phone]
        @location= shop_details[:address]
        @about= shop_details[:about]

       @@all << self
    end

    def self.create_from_data(shops_data)
        shops_data.each {|hash|
            CoffeeKraze::Shop.new(hash)
        }
    end

  
    

end

CoffeeKraze::Shop.create_from_data(CoffeeKraze::Scraper.all)

