#Phase I

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(list) 

    list.each_with_index do |ele, i| #O(n)
        compare_arr = list[0...i] + list[i+1..-1] # O(2n) 
        return ele if compare_arr.all? { |ele2| ele < ele2 }  #O(n)
    end

    #time complexity = O(n^2) + O(2n)

end

p my_min(list)

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

p my_min2(list)

#-------------------

