require "pry"

module PottedPlantProposals
    class Plant
        attr_accessor :name, :scientific_name, :light, :color, :type, :size, :description
        @@all = []

        def initialize
            @@all << self
        end

        def self.all
            @@all
        end

        def self.reset_all
            all.clear
        end

    end
end
