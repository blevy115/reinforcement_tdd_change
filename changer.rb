class Changer
  def self.make_change(coins)
    result = []
    quarters = coins/25
    quarters.times { result.push(25)
      coins -= 25}
    dimes = coins/10
    dimes.times {result.push(10)
      coins -= 10}
    nickels = coins/5
    nickels.times {result.push(5)
      coins -= 5}
    coins.times {result.push(1)}
    return result
  end
end
