

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


def windowed_max_range(array, window)
    wind_arr = []
    i = 0

    while i <= array.length - window
        wind_arr << array[i...i + window]
        i += 1
    end

    biggest_dif = 0
    wind_arr.each do |window|
        dif = window.max - window.min 
        biggest_dif = dif if dif > biggest_dif
    end
    biggest_dif
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) #4  # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) #5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) # 6 # 3, 2, 5, 4, 8