



def my_min(array)
    min = array[0]

    (0...array.length).each do |i|
        ele = array[i]
        min = ele if min > ele 
    end
    min
end


# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)

def largest_contiguous_subsum(array)
    subset_arr = []
    array.each_with_index do |num1, i|
        array.each_with_index do |num2, j|
        subset_arr << array[i..j] if j >= i
        end
    end

    max = subset_arr[0]

    subset_arr.each do |sub_arr|
        # p sub_arr
        max = sub_arr if sub_arr.sum > max.sum
    end
   max.sum
end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list)

7, -6, # list = [2, 3, -6, 7]
# p  largest_contiguous_subsum(list)

# list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])


def largest_contiguous_subsum(array)
    if array.max < 0 
        return array.max
    end

    largest_sum = 0 #5
    current_sum = 0 #5
    #list = [5, 3, -7]
    i = 0
    while i < array.length
        num = array[i] # 5
        current_sum += num # 5
        if current_sum > largest_sum
            largest_sum = current_sum # 5
        end

        if current_sum < 0
            current_sum = 0
        end 
        i +=1
    end
    largest_sum
end



list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

#  largest_sum = 2 
#  current_sum = 2

#  largest_sum = 2 + 3 
#  current_sum = 2 + 3

#  largest_sum = 2 + 3 
#  current_sum = 2 + 3 - 6

    #because current sum reset, we don't add integer to largest sum

#  largest_sum = 7
#  current_sum = 7

