require 'minitest/autorun'
require_relative "../app/chop"

class TestChop < Minitest::Test
    def test_chop_method_exists
        assert !!defined? chop
    end
end
