#YOUR CODE GOES HERE
require 'pry'
def minimum_coins(number)
  available_coins = [100, 50 , 25 , 10, 5, 1]
  coin_count = 0
  coins_used = []
  available_coins.each_with_index do |coin, index|
    if number >= 0
      n = number / coin
	    number = number % coin
	    coin_count += n
    end
  end
  coin_count
end



 number = rand(1..250)

 puts "It took #{minimum_coins(number)} coins to reach #{number}."
