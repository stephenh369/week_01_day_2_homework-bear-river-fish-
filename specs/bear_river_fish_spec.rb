require('minitest/autorun')
require('minitest/reporters')
require_relative('../River')
require_relative('../Fish')
require_relative('../Bear')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestRiver < Minitest::Test

    def setup()
        @bear1 = Bear.new("Cuddles", "Grizzly")
        @river1 = River.new("River Forth")
        @river2 = River.new("River Tay")
        @fish1 = Fish.new("Trout")
        @fish2 = Fish.new("Salmon")
        @fish3 = Fish.new("Pike")
        @fish4 = Fish.new("Cod")
        @fish5 = Fish.new("Haddock")
    end

    def test_get_river_name()
        assert_equal("River Forth", @river1.river_name())
    end
    
    def test_get_fish_list()
        assert_equal([], @river2.fish_list())
    end

    def test_get_bear_name()
        assert_equal("Cuddles", @bear1.bear_name())
    end
    
    def test_add_fish_to_river()
        @river1.add_fish_to_river(@fish1)
        assert_equal(1, @river1.fish_list().count())
    end

    def test_find_fish_by_name()
        @river2.add_fish_to_river(@fish5)
        @river2.find_fish_by_name(@fish5)
        assert_equal("Haddock", @fish5.fish_name())
    end

    def test_remove_fish_from_river()
        @river1.add_fish_to_river(@fish2)
        @river1.add_fish_to_river(@fish3)
        @river1.add_fish_to_river(@fish4)
        @river1.remove_fish_from_river(@fish4)
        assert_equal(2, @river1.fish_list().count())
    end
    
    def test_eat_fish()
        @river1.add_fish_to_river(@fish2)
        @river1.add_fish_to_river(@fish3)
        @river1.add_fish_to_river(@fish4)
        @bear1.eat_fish(@river1)
        assert_equal(2, @river1.fish_list().count())
        assert_equal(1, @bear1.stomach_contents().count())
    end

    def test_roar()
        @bear1.roar()
        assert_equal("*roars*", @bear1.roar())
    end

    def test_fish_count()
        @river2.add_fish_to_river(@fish3)
        assert_equal(1, @river2.fish_count(@river2))
    end

    def test_food_count()
        @bear1.eat_fish(@river1)
        assert_equal(1, @bear1.food_count(@bear1))
    end
end