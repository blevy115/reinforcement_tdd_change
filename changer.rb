class Changer


  def self.make_change(coins)
    result = []
    quarters = coins/25
    quarters.times { result.push(25)}
    remain1 = coins - quarters*25
    dimes = remain1/10
    dimes.times {result.push(10)}
    remain2 = remain1 - dimes*10
    nickels = remain2/5
    nickels.times {result.push(5)}
    pennies = remain2 - nickels*5
    pennies.times {result.push(1)}
    return result
  end
end
