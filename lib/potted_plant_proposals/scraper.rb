require_relative "./plant"
require 'nokogiri'
require 'open-uri'

require "pry"

module PottedPlantProposals
    class Scraper
        @@link = "https://www.bhg.com/bin/plants/?specialFeatures=Good+for+Containers&zipZone=89074"

        def initialize(zip)
            @@link.gsub!("89074", "#{zip}")
        end

        def get_page
            Nokogiri::HTML(open("#{@@link}"))
        end
        
        def get_plants
            self.get_page.css(".tout__content")
        end

        def make_plants
            self.get_plants.first(10).each do |item|
                plant = Plant.new
                plant.name = item.css("a").attribute("title").text.split(", <em>")[0]
                plant.scientific_name = item.css("span em").text.gsub("_", "")
                plant.light = item.css("ul li")[1].css(".tout__contentListItemValue").text
                plant.color = item.css("ul li")[2].css(".tout__contentListItemValue").text
                plant.type = item.css("ul li")[3].css(".tout__contentListItemValue").text
                plant.size = item.css("ul li")[4].css(".tout__contentListItemValue").text
                plant.description = item.css("div[class=tout__summary] p").text
            end
        end

    end
end