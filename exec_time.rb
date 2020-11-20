#Phase I

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(list) 

    list.each_with_index do |ele, i| #O(n)
        compare_arr = list[0...i] + list[i+1..-1] # O(2n) 
        return ele if compare_arr.all? { |ele2| ele < ele2 }  #O(n)
    end

    #time complexity = O(n^2) + O(2n)

end

# p my_min(list)

#Phase2
def my_min2(list)
    smallest = 0
    list.each_with_index do |ele,i|  #O(n)
        if ele < smallest
            smallest = ele
        end
    end
    smallest


    #time complexity is O(n)
end 

# p my_min2(list)

#-------------------

def largest_contiguous_subsum(list)

    res = []

    sub_sets = sub_set(list) # operation is n^3 => n^2 long

    sub_sets.each do |sub_arr| # n^2 (number of elements n^2)
        res << sub_arr.sum # * n => n^3
    end # n^3

    res.max # + n 

    # n^3 + n^3 + n ==> n^3 
end 

def sub_set(arr)
    
    # return [[]] if arr.empty?
    # subs = sub_set(arr.take(arr.count - 1))
    # subs.concat(subs.map { |sub| sub + [arr.last] })

    res = []

    arr.each_with_index do |el1, i1| # n 
        arr.each_with_index do |el2, i2| # n
            if i2 >= i1 
                res << arr[i1..i2] #  * n 
            end
        end
    end

    res # n^3
end

list1 = [5, 3, -7]
list2 = [2, 3, -6, 7, -6, 7]
list3 = [-5, -1, -3]

# p sub_set(list)
# p sub_set(list2)
# p sub_set(list3)

# p largest_contiguous_subsum(list1)
# p largest_contiguous_subsum(list2)
# p largest_contiguous_subsum(list3)

def largest_contiguous_subsum2(list)

    (0...list.length)

end