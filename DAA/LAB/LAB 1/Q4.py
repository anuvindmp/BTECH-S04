"""
4. We need to search an element ‘k’ in a sorted array of size N. 
a. Will your program for Qn. No 3 work for this case? 
b. Is the program for Qn. No 3 the most efficient one for this? (Hint: There exists a 
Binary search algorithm) 
c. Write an iterative program to implement Binary search. 
d. As the elements in the array changes (the size of the array remains same), will there 
be any change in the number of times the loop executes? What is the minimum and 
maximum number of times the loop executes? 
e. What is the time complexity of your program?
"""

def binarySearch(array, k):
    l = 0
    u = len(array)-1

    while l <= u :
        mid = (l+u)//2

        if array[mid] == k:
            return f"element found at index {mid}"
        elif array[mid] < k:
            l = mid + 1
        else:
            u = mid - 1

array = [1,2,3,4,5,6,7,8,9]
print(binarySearch(array, 6))