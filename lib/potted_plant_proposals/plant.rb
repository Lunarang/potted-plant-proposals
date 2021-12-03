require "pry"

module PottedPlantProposals
    class Plant
        attr_accessor :name, :scientific_name, :light, :color, :type, :size, :description
        @@all = []

        def initialize
            @@all << self
        end

        def show_profile
            self.instance_variables.each do |variable| 
                title = variable.to_s.gsub("@", "").upcase
                desc = self.instance_variable_get("#{variable}")
                puts "#{title}:\n#{desc}\n\n"
            end
        end

        def self.all
            @@all
        end

        def self.reset_all
            all.clear
        end

    end
end