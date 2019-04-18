require 'byebug'
def my_min(arr)
   min_value = arr[0]

    arr.each do |num|
        arr.each do |num2|
            min_value = num2 if num2 < num && num2 < min_value
            # min_value = num if num < num2
        end
    end
    min_value
end
#O(n**2)

def my_min_e(arr)
    min_value = arr[0]

    i = 0

    while i < arr.length
        min_value = arr[i] if arr[i] < min_value
        i += 1
    end
    min_value
end

def sub_sum(arr) #n**2
    sums = []
    (0...arr.length).each_with_index do | i|
        (i...arr.length).each_with_index do |j|
            sums.push(arr[i..j].sum)
        end
    end
    return sums.max
end

def sub_sum_e(arr) #n

    # arr.each_with_index do |num, i|
    #     largest = num if num > largest
    #     largest = arr[0..i].sum if arr[0..i].sum > largest
    #     largest = arr[i..-1].sum if arr[i..-1].sum > largest
    # end

    largest = arr[0]
    current_sum = 0
    arr.each do |num|
        if current_sum + num < 0 #&& largest < num
            current_sum = 0
        else
            current_sum += num
        end
        largest = current_sum if current_sum > largest 
        # largest = num if num > largest
    end

    largest
end