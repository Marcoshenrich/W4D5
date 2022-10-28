
def permutations(array)
    return [array] if array.length == 1
    resarr = []

    array.each_with_index do |num, idx|
        permutedsub = permutations(array[0...idx] + array[idx +1..-1]) #recursive call (array up to the index + from the index+1 to the end)
        permutedsub.each do |arr|
            resarr << [num].concat(arr)
        end
    end

    resarr
end

def first_anagram(str1, str2) # O(n!)
    all_poss = permutations(str1.split(""))
    all_poss.each do |ele|
        return true if ele.join("") == str2
    end
    false
end


def second_anagram?(str1, str2)  #O(n^2)
    str2_arr = str2.split("") 
    str1.each_char do |char| #On
        if str2_arr.include?(char) #On
            str2_arr.delete_at(str2_arr.index(char))
        end
    end
    str2_arr.join("") == ""
end


def third_anagram?(str1, str2)    # O(n logn)
    str1.split("").sort == str2.split("").sort
end

def fourth_anagram(str1, str2)
    hash = Hash.new(0)
    str1.each_char do |char|
        hash[char] += 1
    end

    str2.each_char do |char|
        hash[char] -= 1
    end
    
    hash.values.all? {|val| val == 0}   #3n O(n)

end

p fourth_anagram("elvis", "lives") 

# hash_1 = Hash.new(0)
#     str_1.each_char do |char|
#         hash_1[char] +=1
#     end

#     hash_2 = Hash.new(0)
#     str_2.each_char do |char|
#         hash_2[char] +=1
#     end
#     hash_1 == hash_2