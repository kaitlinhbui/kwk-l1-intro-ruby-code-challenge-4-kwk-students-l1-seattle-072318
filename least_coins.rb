# #write out your code here

# cents = 30

# def least_coins(cents)
#   coins = {
#     :quarters => 25,
#     :dimes => 10,
#     :nickels => 5,
#     :pennies => 1
#   }
  
#   least_coins = {}
  
#   total_cents = 30
  
#   coins.each do |coin_type, coin_worth|
#     if #{cents} % #{coin_worth} >= 0
#       puts "quarters => 1"
#       total_cents = total_cents - #{cents} - #{coin_worth}
#   end
      

# end

puts "Welcome to your least coins calculator. Please enter an amount of money in cents:"

cents = gets.strip

def least_coins(cents)
  coins = {
    :quarters => 0, 
    :dimes => 0, 
    :nickels => 0,
    :pennies => 0
  }
  
  #quarters
  while cents >= 25
    coins[:quarters] += 1
    cents = cents - 25
  end
  
  #dimes
  while cents >= 10
    coins[:dimes] += 1
    cents = cents - 10
  end 
  
  #nickels
  while cents >= 5
    coins[:nickels] += 1
    cents = cents - 5
  end
  
  #pennies
  while cents >= 1
    coins[:pennies] += 1
    cents = cents - 1
  end
  
  puts coins
  
end