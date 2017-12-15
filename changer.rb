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
  quarters = coins/25
  quarters.times { result.push(25)
    coins -= 25}
  return coins
end

def dimes(coins, result)
  dimes = coins/10
  dimes.times {result.push(10)
    coins -= 10}
  return coins
end

def nickels(coins, result)
  nickels = coins/5
  nickels.times {result.push(5)
    coins -= 5}
  return coins
end

def pennies(coins, result)
  coins.times {result.push(1)}
end
