def binary_search(arr, target)
    puts("Remaining elements to search: #{arr.length}")
    midpoint = arr.length/2
    middle_item = arr[midpoint]

    if arr.length <= 1
        return middle_item === target ? target :false
    end
    if middle_item === target 
        puts "#{target} returned"
        return target 
    elsif middle_item >= target
        return binary_search(arr.slice(0, midpoint), target)
    elsif middle_item < target 
       return binary_search(arr.slice(midpoint, arr.length), target)
    end
end

def linear_search(arr, target_num)
    arr.each_with_index do |num,i|
        if num === target_num 
            puts "#{num} returned"
            return num
        else 
            puts "Remaining elements to search: #{arr.length - i}"
        end
    end
    return false
end
array = (1..50).to_a
 binary_search(array, 50)

linear_search(array, 50)


