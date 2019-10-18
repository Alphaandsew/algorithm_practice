
##a merge sort recursively splits an array in half, halves those halfs, then merges those back up, sorted in ascending order.

def merge_sort(array)
    return array if array.length <= 1
    merge(merge_sort(array[0..array.length/2-1]),merge_sort(array[(array.length/2)..-1]))
end

# this is where the sorting happens.
def merge(left_half,right_half)
    result = [] #array that the 2 halves get sorted into
    while !left_half.empty? && !right_half.empty? 
        if left_half[0] < right_half[0] #if the first item in the left half is larger:
            result << left_half.shift() #append it to the result array
        else
            result << right_half.shift() #otherwise stick the first item in the right half in there.
        end
    end
    #if there's anything left in the left array, stick it into the result since it's already sorted
    while !left_half.empty?
        result << left_half.shift()
    end
    #if there's anything left in the right array, stick it into the result since it's already sorted
    while !right_half.empty?
        result << right_half.shift()
    end
    #this gets returned to the above merge and gets sorted with the other resulting halves
    result
end

##testing it out
#  array = [10,13,91,7,22,91,3,3,93,7,9,22,91,92]

#  puts "unsorted: #{array}"
#  puts "sorted: #{merge_sort(array)}"

