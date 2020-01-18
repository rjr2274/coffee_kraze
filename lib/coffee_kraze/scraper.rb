require "open-uri"
require "pry"
require "nokogiri"
require "../coffee_kraze"
class CoffeeKraze::Scraper
    def self.scrape_page
        html = open("https://denver.eater.com/maps/denver-top-coffee-shops-20")
        doc = Nokogiri::HTML(html)
        binding.pry
    end





end
#address : doc.css("div.c-mapstack__address").first.text
#phone: doc.css("div.c-mapstack__phone.mobile-only").collect {|shop| shop.text}
#name: doc.css(".c-mapstack__card-hed").text.gsub(" ", "").split.uniq
#description: description = doc.css(".c-entry-content p").collect {|shop| shop.text}

CoffeeKraze::Scraper.scrape_page

