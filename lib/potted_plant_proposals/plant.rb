require "pry"

module PottedPlantProposals
    class Plant
        attr_accessor :name, :scientific_name, :light, :color, :type, :size, :description
        @@all = []

        def initialize
            @@all << self
        end

        def self.show_profile(index)
            all[index].instance_variables.each do |name| 
                title = name.to_s.gsub("@", "").upcase
                binding.pry
                desc = instance_variable_get("#{name}")
                puts "#{title}:"
                puts "#{desc}"
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