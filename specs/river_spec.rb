require('minitest/autorun')
require('minitest/reporters')
require_relative('../River')
require_relative('../Fish')
require_relative('../Bear')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestRiver < Minitest::Test

    def setup()
        @river1 = River.new("River Forth")
        @river2 = River.new("River Tay")
        @fish1 = Fish.new("Trout")
        @fish2 = Fish.new("Salmon")
        @fish3 = Fish.new("Pike")
        @fish4 = Fish.new("Cod")
        @fish5 = Fish.new("Haddock")
    end

    def test_add_fish_to_river()
        @river1.add_fish_to_river(@fish1)
        assert_equal(1, @river1.fish_list().count())
    end

    def test_remove_fish_from_river()
        @river1.add_fish_to_river(@fish2)
        @river1.add_fish_to_river(@fish3)
        @river1.add_fish_to_river(@fish4)
        @river1.remove_fish_from_river(@fish4)
        assert_equal(2, @river1.fish_list().count())
    end

end