class Changer
  def self.make_change(coins)
    result = []
    values = [25, 10, 5, 1]
    values.each do |value|
      coins = counter(coins, result, value)
    end
    return result
  end
end

def counter(coins , result, number)
  currency = coins/number
  currency.times  {result.push(number)
  coins -= number}
  return coins
end
