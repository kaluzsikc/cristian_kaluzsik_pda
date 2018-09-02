### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame


  def checkforAce(card)           #naming convention => should be check_for_ace
    if card.value = 1             # card.value == 1; single value is assigning value and not comparing
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2)   #def highest_card typo, missing comma between the 2 parameters
  if card1.value > card2.value    #indentation
    return card.name              #card1 should be returned not just card. There's no "name" method declared
  else
    card2                         #the return value should be name as well
  end
end       
end                               # extra and / end of class should be moved after next function

def self.cards_total(cards)
  total                           #total needs to be assign a start value
  for card in cards
    total += card.value
    return "You have a total of" + total   #return should be placed after the loop and should you se string interpolation for total => "#{total}"
  end
end
                                  #missing end

```
