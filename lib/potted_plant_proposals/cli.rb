require "pry"

module PottedPlantProposals
    class CLI
        def call
            puts "Welcome future plant parental unit!"
        end

        def get_zip
            puts "Please enter your 5 digit zipcode:"
            input = gets.chomp
            Scraper.new(input)
        end
    end
end
