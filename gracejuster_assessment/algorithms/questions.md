1. Implement merge sort. What's the bigO and why?

#Process 
Divide the array in half, sort each half and merge them back together
Merge method takes two sorted arrays and orders them by comparing first elements and filling a holder array  
Call merge sort on each half until merging two single element arrays then work way back up

#Implementation
def merge_sort(array)
  merge(merge_sort(array.slice(0, array.length/2), merge_sort(array.slice(array.length/2 +1, array.length))
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

#Runtime 
O(n log n)
Sorting a list takes as long as the length of the list n
We recursively divide the list(log base 2) and then merge everything back after which takes the length of the list n 


2. Write a method to reverse a string. (Hint: You cannot use reverse method)

 def reverseString(string)
   i = string.length
   reversedString = []
   while i >= 0 do 
     reversedString.push(string[length])
     i -= 1
 		end 
  reversedString.join("")
 end

3. Write a method to see if string is a palindrome

	def is_palindrome?(string)
		string == string.reverse ? true : false
	end 

4. Given the root note in a sorted binary search tree, how do you find the smallest element?

Missed this lecture for an interview. Still reviewing. 