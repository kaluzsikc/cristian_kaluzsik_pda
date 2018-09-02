
class Card
  attr_reader :suit, :value, :name

  def initialize(name, suit, value )
    @suit = suit;
    @value = value;
    @name = name;
  end

end
