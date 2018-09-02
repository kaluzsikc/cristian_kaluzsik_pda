require("minitest/autorun")
require_relative("../testing_task_2")
require_relative("../card")

class TestCardGame < MiniTest::Test

  def setup
    @card1 = Card.new("Ace", "Spade", 1)
    @card2 = Card.new("King","Spade", 10)
    @card3 = Card.new("Deuce", "Heart", 2)

    @card_game = CardGame.new()

    @cards = [@card1, @card2, @card3]

  end

  def test_card_has_name
    assert_equal("Ace", @card1.name)
  end

  def test_card_has_suit
    assert_equal("Spade", @card2.suit)
  end

  def test_card_has_value
    assert_equal(2, @card3.value)
  end

  def test_for_ace__true
    assert_equal(true, @card_game.check_for_ace(@card1))
  end

  def test_for_ace__fasle
    assert_equal(false, @card_game.check_for_ace(@card2))
  end

  def test_highest_card
    highest_card = @card_game.highest_card(@card1, @card2)
    assert_equal("King", highest_card)
  end

  def test_highest_card
    highest_card = @card_game.highest_card(@card1, @card3)
    assert_equal("Deuce", highest_card)
  end

  def test_cards_total
    total = CardGame.cards_total(@cards)
    assert_equal("You have a total of 13", total)
  end
end
