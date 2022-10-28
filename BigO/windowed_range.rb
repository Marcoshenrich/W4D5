
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