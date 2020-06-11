### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card)
    if card.value = 1
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2)
  if card1.value > card2.value
    return card
  else
    return card2
  end
end
end

def self.cards_total(cards)
  total
  for card in cards
    total += card.value
    return "You have a total of" + total
  end
end
```

## Comments below

**General comment: The code references an attribute of the 'Card' class (value) but does not perform a 'require_relative' to read the other class (unless it doesn't matter if you're going to do everything in the test file?). The following line should be present:**
```ruby
require_relative('./card')
```
**I think all of the functions should be Class functions, instead of instance functions, since they're checking the instances of the 'Card' class anyway. so that 'check_for_ace' and 'highest_card' are written as:**
```ruby
def self.check_for_ace(card)

def self.highest_card(card1, card2)
```

**line 10 - function name not in the right convention. It should be snake case, like this:**
```ruby
def check_for_ace(card)
```

**line 11 - condition error ('=' instead of '=='), and the indentation for the function is off. It should be:**
```ruby
if card.value == 1
```
**line 18 - function definition syntax error ('dif' instead of 'def'). There's also no comma to separate the parameters. The indentation is also off. It should be:**
```ruby
def highest_card(card1, card2)
  if card1.value > card2.value
    return card
  else
    return card2
  end
end
```
**line 20 - return variable does not match parameter name ('card' instead of 'card1'), it should be:**
```ruby
return card1
```
**line 25 - Class 'end' statement is in the wrong place, it should be at the very end of the code.**

**line 28 - no initial value given to local variable 'total', it should be:**
```ruby
total = 0
```
**line 31 - return statement in the wrong place. For loop will exit at the wrong point. It's also probably better to have a space at the end of the string, although I think it would be even better to use string interpolation, like this:**
```ruby
for card in cards
  total += card.value
end
return "You have a total of #{total}"
```

