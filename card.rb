class Card
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value;
  end

  def set_suit(new_suit)
    @suit = new_suit_value
  end
  
  def set_value(new_value)
    @value = new_value
  end

end
