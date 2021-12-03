require "pry"

module PottedPlantProposals
    class CLI
        attr_accessor :zip

        def call
            self.get_zip
            self.plant_proposal
            self.view_another
            self.new_zip
        end

        def get_zip
            @zip = ""
            until self.valid?
                puts "Please enter your 5 digit zipcode:"
                @zip = gets.chomp
            end
            PottedPlantProposals::Scraper.new("#{@zip}").make_plants
            puts "\nThank you!"
        end

        def show_plants
            puts "Here's a list of the top 10 potted plants which are appropriate for your area...\n"
            PottedPlantProposals::Plant.all.each.with_index(1) { |plant, index| puts "#{index}. #{plant.name}"}
        end

        def choose_plant
            puts "Please choose a number 1 - 10 for more information."
            input = gets.chomp.to_i-1
            PottedPlantProposals::Plant.all[input].show_profile
        end

        def plant_proposal
            self.show_plants
            self.choose_plant

            puts "\nFascinating!"
        end

        def valid?
            @zip.size == 5
        end

        def view_another
            reply = ""
            until reply.downcase == "n" || reply.downcase == "no"
                puts "Would you like to view another?"
                reply = gets.chomp
                break if reply.downcase == "n" || reply.downcase == "no"
                self.plant_proposal
            end
        end

        def new_zip
            puts "How about trying another zipcode?"
            reply = gets.chomp
            if reply.downcase == "y" || reply.downcase == "yes"
                self.call
            else 
                puts "Maybe next time, then. Goodbye!"
            end
        end
    end
end
