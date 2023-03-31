def stock_picker(array)
  # find lowest day to buy that isn't in last array position
  # find biggest difference buy to sell
  # find highest price that isn't first day to sell
  
  # p array
  profit_margin = 0
  days_to_sell = []

  array.each_with_index do |stock1, index1|
    array.each_with_index do |stock2, index2|
      current_profit = stock2 - stock1
      # puts "stock2 #{stock2} - stock1 #{stock1} = current_profit #{current_profit}"
      if current_profit > profit_margin && index2 > index1
        profit_margin = current_profit
        days_to_sell = index1, index2
      end
    end
  end
  p days_to_sell
end

stock_picker([17,3,6,9,15,8,6,1,10])