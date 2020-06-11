require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporters.new

require_relative('../card_game')
require_relative('../card')

class TestCardGame < MiniTest::Test

    def setup()
        @card1 = Card.new(1, 1)
        @card2 = Card.new(2, 2)
    end

    def test_that

end
