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

    def find_fish_by_name(fish_name)
        return fish_name.fish_name()
    end

    def fish_count(river_name)
        return river_name.fish_list().count()
    end
end
