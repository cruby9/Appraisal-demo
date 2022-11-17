def bubble_sort(array)
    n = array.length

    loop do 
        #[1,4,3,5,34,3,]
        #[1,3,4,5,34,3,] etc..
        swapped = false
        
        (n-1).times do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i +1], array[i]
                swapped = true
            end
        end
        break if not swapped
    end
    return array
end
a = [1,4,3,5,34,3,]
p bubble_sort(a)
