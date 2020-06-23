class Bear

    attr_accessor :bear_name, :bear_type, :stomach_contents

    def initialize(bear_name, bear_type)
        @bear_name = bear_name
        @bear_type = bear_type
        @stomach_contents = []
    end

    def eat_fish(river)
        eaten_fish = river.fish_list().sample()
        @stomach_contents.push(eaten_fish)
        river.remove_fish_from_river(eaten_fish)
    end

    def roar()
        return "*roars*"
    end

    def food_count(bear)
        return @stomach_contents.count()
    end
end