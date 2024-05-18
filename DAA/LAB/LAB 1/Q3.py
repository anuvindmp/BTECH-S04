"""
3. Write a program to search an element 'k' in an unsorted array of size N. 
a. As the elements in the array changes (the size of the array remains same), will there 
be any change in the number of times the loop executes? What is the minimum and 
maximum number of times the loop executes? 
b. What is the time complexity of your program? 
"""

def linearSearch(array, k):
    for i in range(len(array)):
        if array[i] == k:
            return f"Element found at index {i}" 
    return False
        
array = [5,8,9,4,7,3]
k = 7
print(linearSearch(array, k))
