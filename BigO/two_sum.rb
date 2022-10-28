

def brute_two_sum(array, target)  # O(n^2)
    (0...array.length).each do |i|
        (i + 1...array.length).each do |j|
            return true if array[i] + array[j] == target 
        end
    end
    false
end
# arr = [0, 5, 1, 7]
# p brute_two_sum(arr, 6)
# p brute_two_sum(arr, 10)


def okay_two_sum(array, target)
    sort_arr = merge_sort(array)

    (0...array.length + 1).each do |i|

        # we figured this out in concept and that's a win

    end
    sort_arr
end

def merge_sort(array)
    return array if array.length < 2

    middle = array.length / 2
    left_part = merge_sort(array[0...middle])
    right_part = merge_sort(array[middle..-1])
    merge(left_part, right_part)
end

def merge(arr_1, arr_2) 
    result = []
    until arr_1.empty? || arr_2.empty?
        if arr_1.first < arr_2.first
            result << arr_1.shift
        else
            result << arr_2.shift
        end
    end
    result.concat(arr_1,arr_2)
end

# [0, 3, 1, 7, 6]


def hash_map(array, target) #0(n)
    hash = Hash.new
    array.each do |num|
        difference = target - num
        return true if hash[difference] == num
        hash[num] = difference
    end
    false
end


# p hash_map([0, 3, 1, 7, 6], 20)
