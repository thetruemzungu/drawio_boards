module Robot
    class Grumbot
        attr_accessor :firstName
        attr_accessor :lastName
        attr_accessor :grumbotIntelligence
        
        def initialize(firstName, lastName, grumbotIntelligenceLevel)
            @firstName = firstName
            @lastName = lastName
            @grumbotIntelligence = grumbotIntelligenceLevel
        end
    end
end