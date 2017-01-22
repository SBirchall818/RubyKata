require 'minitest/autorun'
require_relative "../app/app"

class TestApp < Minitest::Test
    def setup
        @app = App.new
    end

    def test_app_name
        assert_equal "Super App", @app.name
    end
end