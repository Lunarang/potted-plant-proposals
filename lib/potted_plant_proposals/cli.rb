require "pry"

module PottedPlantProposals
    class CLI
        attr_accessor :zip

        def call
            puts "Welcome future plant parental unit!"
            self.get_zip

            self.plant_proposal

            reply = ""
            until reply == "n" || reply == "no"
                puts "Would you like to view another?"
                reply = gets.chomp
                self.plant_proposal
            end
        end

        def get_zip
            @zip = ""
            until self.valid?
                puts "Please enter your 5 digit zipcode:"
                @zip = gets.chomp
            end
            Scraper.new("#{@zip}").make_plants
            puts "Thank you!"
        end

        def show_plants
            puts "Here's a list of the top 10 potted plants which are appropriate for your area..."
            Plant.all.each.with_index(1) { |plant, index| puts "#{index}. #{plant.name}"}
        end

        def choose_plant
            puts "Please choose a number 1 - 10 for more information."
            input = gets.chomp.to_i
            Plant.show_profile(input)
        end

        def plant_proposal
            self.show_plants
            self.choose_plant

            puts "Fascinating!"
        end

        def valid?
            @zip.size == 5
        end

    end
end
