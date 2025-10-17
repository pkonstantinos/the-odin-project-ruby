def bubble_sort(nums)
  counter = nums.length
  while(counter != 0)
    (0...counter).each do |x|
      if(x+1 == counter)
      else
        if(nums[x] > nums[x+1])
          temp = nums[x]
          nums[x] = nums[x+1]
          nums[x+1] = temp
        end
      end
    end
    counter-=1
  end
  p nums
end


bubble_sort([4,2,7,3,3,8,3])

