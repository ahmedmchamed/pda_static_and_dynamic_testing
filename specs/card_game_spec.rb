require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game')
require_relative('../card')

class TestCardGame < MiniTest::Test

    def setup()
        @card1 = Card.new(1, 2)
        @card2 = Card.new(2, 1)
    end

    def test_highest_card__true
        result = CardGame.highest_card(@card1, @card2)
        assert_equal(true, result)
    end

end
