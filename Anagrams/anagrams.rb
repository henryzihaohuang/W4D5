def first_anagram?(str, str2)
    res = []

    chars = str.split("") #=> n
    permutations = chars.permutation.to_a #=> n!
    permutations.map { |subarrays| res << subarrays.join("") }
    # n! * n^2  
    res.include?(str2) #n
    
end

#time complexity: 2n + 2n! * n^2  
# p first_anagram?("elvis", "lives")    #=> true
# p first_anagram?("gizmo", "sally")    #=> false