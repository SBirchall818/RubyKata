require 'minitest/autorun'
require_relative "../app/chop"

class TestChop < Minitest::Test
    def test_chop_method_exists
        assert !!defined? ruby_chop
    end

    def test_ruby_chop
        assert_equal(-1, ruby_chop(3, []))
        assert_equal(-1, ruby_chop(3, [1]))
        assert_equal(0,  ruby_chop(1, [1]))
        #
        assert_equal(0,  ruby_chop(1, [1, 3, 5]))
        assert_equal(1,  ruby_chop(3, [1, 3, 5]))
        assert_equal(2,  ruby_chop(5, [1, 3, 5]))
        assert_equal(-1, ruby_chop(0, [1, 3, 5]))
        assert_equal(-1, ruby_chop(2, [1, 3, 5]))
        assert_equal(-1, ruby_chop(4, [1, 3, 5]))
        assert_equal(-1, ruby_chop(6, [1, 3, 5]))
        #
        assert_equal(0,  ruby_chop(1, [1, 3, 5, 7]))
        assert_equal(1,  ruby_chop(3, [1, 3, 5, 7]))
        assert_equal(2,  ruby_chop(5, [1, 3, 5, 7]))
        assert_equal(3,  ruby_chop(7, [1, 3, 5, 7]))
        assert_equal(-1, ruby_chop(0, [1, 3, 5, 7]))
        assert_equal(-1, ruby_chop(2, [1, 3, 5, 7]))
        assert_equal(-1, ruby_chop(4, [1, 3, 5, 7]))
        assert_equal(-1, ruby_chop(6, [1, 3, 5, 7]))
        assert_equal(-1, ruby_chop(8, [1, 3, 5, 7]))
    end

    def test_custom_chop_method_exists
        assert !!defined? custom_chop
    end

    def test_custom_chop
        assert_equal(-1, custom_chop(3, []))
        assert_equal(-1, custom_chop(3, [1]))
        assert_equal(0,  custom_chop(1, [1]))
        #
        assert_equal(0,  custom_chop(1, [1, 3, 5]))
        assert_equal(1,  custom_chop(3, [1, 3, 5]))
        assert_equal(2,  custom_chop(5, [1, 3, 5]))
        assert_equal(-1, custom_chop(0, [1, 3, 5]))
        assert_equal(-1, custom_chop(2, [1, 3, 5]))
        assert_equal(-1, custom_chop(4, [1, 3, 5]))
        assert_equal(-1, custom_chop(6, [1, 3, 5]))
        #
        assert_equal(0,  custom_chop(1, [1, 3, 5, 7]))
        assert_equal(1,  custom_chop(3, [1, 3, 5, 7]))
        assert_equal(2,  custom_chop(5, [1, 3, 5, 7]))
        assert_equal(3,  custom_chop(7, [1, 3, 5, 7]))
        assert_equal(-1, custom_chop(0, [1, 3, 5, 7]))
        assert_equal(-1, custom_chop(2, [1, 3, 5, 7]))
        assert_equal(-1, custom_chop(4, [1, 3, 5, 7]))
        assert_equal(-1, custom_chop(6, [1, 3, 5, 7]))
        assert_equal(-1, custom_chop(8, [1, 3, 5, 7]))
    end
end
