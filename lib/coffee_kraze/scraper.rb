require "open-uri"
require "pry"
require "nokogiri"
class CoffeeKraze::Scraper

    @@all = []

    def self.scrape_page
        html = open("https://denver.eater.com/maps/denver-top-coffee-shops-20")
        doc = Nokogiri::HTML(html)
        ###############################################################################################
        #                   ADDRESS Portion                                                   #########
        ###############################################################################################

        address_list = doc.css(".c-mapstack__address").collect {|shop|
        shop.text
        }
        address_list = address_list.collect {|address|
            if address.include?("-") != true
                address
            end    
        }
        address_list = address_list.uniq
        address_list.delete(nil)

        ################################################################################################
        ##################### PHone Number #############################################################
        ################################################################################################

        phone_list = doc.css("div.c-mapstack__phone.mobile-only").collect {|shop| shop.text}

        ################################################################################################
        #####################  Abouts (description) ####################################################
        ################################################################################################

        description_list = doc.css(".c-entry-content p").collect {|shop| shop.text}
        description_list = description_list.uniq
        description_list.shift(4)


        ################################################################################################
        #####################             NAMES     ####################################################
        ################################################################################################
         name_list = doc.css(".c-mapstack__card-hed").text.gsub(" ", "").split.uniq
         name_list.delete("CopyLink")

        ################################################################################################
        #####################         OBJECT BUILDER     ###############################################
        ################################################################################################

        counter = 0
        while @@all.count < 20 
            shop = {}

            shop[:name] = name_list[counter]
            shop[:address] = address_list[counter]
            if phone_list[counter] != nil
                shop[:phone] = phone_list[counter]
            else
                shop[:phone] = "This shop does not have a registered number"
            end
            shop[:about] = description_list[counter]
            counter = counter + 1
            @@all << shop
        end




    end

    ################################################################################################
    #####################          METHODS      ###############################################
    ################################################################################################

    def self.all
        @@all
    end

end


#address : doc.css("div.c-mapstack__address").first.text
#phone: doc.css("div.c-mapstack__phone.mobile-only").collect {|shop| shop.text}
#name: doc.css(".c-mapstack__card-hed").text.gsub(" ", "").split.uniq
#description: description = doc.css(".c-entry-content p").collect {|shop| shop.text} description = description.uniq description.shift(3)

CoffeeKraze::Scraper.scrape_page

