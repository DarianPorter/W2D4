require 'byebug'
def two_sum_a(arr, target) #n**2
    i = 0 
    while i < arr.length 
        j = i + 1
        while j < arr.length 
            return true if arr[i] + arr[j] == target    
            j += 1
        end
        i += 1
    end
    return false 
end

def two_sum_b?(arr,target) #n*logn

    arr.each_with_index do |ele, i|
        # debugger
        sum_search = arr.bsearch_index do |val| 
            # debugger
            val == (target - ele)
        end
        # debugger
        if sum_search && sum_search != i
            return true
        end
    end
    false
end

arr = [0, 1, 5, 7]
# p two_sum_b?(arr, 6) # => should be true
p two_sum_b?(arr, 10) # => should be false