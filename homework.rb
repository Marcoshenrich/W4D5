fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(fish_arr)
    longestfish = ""
    fish_arr.each do |fish|
        fish_arr.each do |fish2|
            longestfish = fish2 if fish2.length > fish.length && longestfish.length < fish2.length
        end
    end
    longestfish
end

def clever_octopus(fish_arr)
    longestfish = ""
    fish_arr.each do |fish|
        longestfish = fish if fish.length > longestfish.length
    end
    longestfish
end

p sluggish_octopus(fish_arr)
p clever_octopus(fish_arr)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles_array)
    tiles_array.each_with_index do |direction, i|
        return i if dir == direction 
    end
end

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)