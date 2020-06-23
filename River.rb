class River

    attr_accessor :river_name, :fish_list

    def initialize(river_name)
        @river_name = river_name
        @fish_list = []

    end

    def add_fish_to_river(fish_name)
        @fish_list.push(fish_name)
    end

    def remove_fish_from_river(fish_name)
        @fish_list.delete(fish_name)
    end
end