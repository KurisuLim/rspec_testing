class Zombie
    attr_accessor :name, :brains, :alive,
    :rotting, :height

    def initialize
        @name = "Ash"
        @brains = 0
        @alive = "false"
        @rotting = "true"
        @height = 10
    end

    def hungry?
        true
    end

end