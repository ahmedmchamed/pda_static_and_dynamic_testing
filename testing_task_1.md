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

### Comments below

**line 11 - condition error ('=' instead of '=='), it should be:**
```ruby
if card.value == 1
```
**line 18 - function definition syntax error ('dif' instead of 'def). There's also no comment to separate
the parameters. The indentation is also off. It should be:**
```ruby
def highest_card(card1, card2)
```
**line 20 - return variable does not match parameter name ('card' instead of 'card1'), it should be:**
```ruby
return card1
```
**line 25 - extra 'end' statement, it should not be there.**

**line 28 - no initial value given to local variable 'total', it should be:**
```ruby
total = 0
```
**line 31 - return statement in the wrong place. For loop will end in the wrong place. It's also
probably better to have a space at the end of the string, although I think it would be even better
to use string interpolation, like this:**
```ruby
for card in cards
  total += card.value
end
return "You have a total of #{total}"
```

