class Changer
  def self.make_change(coins)
    result = []
    coins = quarter(coins, result)
    coins = dimes(coins, result)
    coins = nickels(coins, result)
    coins = pennies(coins, result)
    return result
  end
end

def quarter(coins, result)
  counter(coins, result, 25)
end

def dimes(coins, result)
  counter(coins, result, 10)
end

def nickels(coins, result)
  counter(coins, result, 5)
end

def pennies(coins, result)
  counter(coins, result, 1)
end

def counter(coins , result, number)
  currency = coins/number
  currency.times  {result.push(number)
  coins -= number}
  return coins
end
