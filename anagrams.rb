def first_anagram?(str1, str2) #n!
    anagrams = []

    while anagrams.length < factorial(str1.length)
        new_word = str1.split("").shuffle.join("")
        anagrams << new_word unless anagrams.include?(new_word)
    end
    anagrams.include?(str2)
end

def factorial(num) #n!
    return 1 if num == 1
    num * factorial(num - 1)
end

def second_anagram(str1, str2) #n**2
    i = 0
    while i < str1.length
        unless str2.index(str1[i]).nil?
            ana_i = str2.index(str1[i])  
            str2.delete(ana_i)
        end
        i += 1 
    end
    return str2 == ""
end

def third_anagram?(str1, str2) #n**2
    str1.split("").sort == str2.split("").sort

end

# p third_anagram?("gizmo", "sally")
# p third_anagram?("elvis", "lives")

def fourth_anagram?(str1, str2) #n
    hash = Hash.new {|h,k| h[k] = 0}

    str1.each_char do |char|
        hash[char] += 1
    end

    str2.each_char do |char|
        hash[char] -= 1
    end


    hash.values.all? {|ele| ele == 0} 
end

p fourth_anagram?("gizmo", "sally")
p fourth_anagram?("elvis", "lives")
