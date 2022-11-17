def bubble_sort(prices)
    prices.each_cons(2) do |first, second|
     if first > second 
      prices.insert 1, prices.delete_at(0)
     else  prices
     end
        prices.each_cons(2) do |third, second|
            if third > second
                prices.insert 2, prices.delete_at(1)
            else prices
            end
        end
    end
    p prices
end
bubble_sort([4,3,78,2,0,2])    
 
 