def stock_picker(prices)
  sequences = []
  current_min_indx = 0
  current_max_indx= 0
  prices.each_with_index do |price, index|
    
    if(index < prices.length-1 && price < prices[index+1])
      if(price < prices[current_min_indx])
        current_min_indx = index
      end
      current_max_indx = index+1
    else
      if (!sequences.include?([current_min_indx, current_max_indx]))
        sequences.push([current_min_indx, current_max_indx])
      end
    end
  end
  max = 0
  max_indx = 0
  sequences.each_with_index do |sequence, index|
    if ((prices[sequence[1]] - prices[sequence[0]]) > max)
      max = prices[sequence[1]] - prices[sequence[0]]
      max_indx = index
    end
  end

  p sequences[max_indx] 
end

stock_picker([17,3,6,9,15,8,6,1,10])