require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game')
require_relative('../card')

class TestCardGame < MiniTest::Test

    def setup()
        @card1 = Card.new(1, 2)
        @card2 = Card.new(2, 1)
        @card3 = Card.new(2, 2)

        @cards = [@card1, @card2, @card3]
    end

    def test_check_for_ace__return_false
        result = CardGame.check_for_ace(@card1)
        assert_equal(false, result)
    end

    def test_check_for_ace__return_true
        card1 = Card.new(1, 1)
        result = CardGame.check_for_ace(card1)
        assert_equal(true, result)
    end

    def test_highest_card__return_card1
        result = CardGame.highest_card(@card1, @card2)
        assert_equal(@card1, result)
    end

    def test_highest_card__return_card2
        card1 = Card.new(1, 1)
        card2 = Card.new(2, 2)
        result = CardGame.highest_card(card1, card2)
        assert_equal(card2, result)
    end

    def test_cards_total_value
        result = CardGame.cards_total(@cards)
        assert_equal("You have a total of 5", result)
    end

end
