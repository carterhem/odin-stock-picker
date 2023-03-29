def stock_picker(array)
  # find lowest day to buy that isn't in last array position
  # find biggest difference buy to sell
  # find highest price that isn't first day to sell
  # gotta do differences as I have to buy before I can sell (maybe double loop again?)
  p array
  high_stock = 0
  low_stock = 100
  array.each do |stock|
    if stock > high_stock # && stock position isn't one
      high_stock = stock
      high_stock
    end
      
    if stock < low_stock # stock position isn't last
      low_stock = stock
      low_stock
    end
  end
  p "high_stock #{high_stock}"
  p "low_stock #{low_stock}"
end

stock_picker([17,3,6,9,15,8,6,1,10])