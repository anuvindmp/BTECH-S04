"""
2. Write a program to find the smallest and the largest element in a sorted array. 
a. Do we need any loops in this program? 
b. What is the time complexity of your program? 
"""

def smallest_largest(array):    
    return array[0], array[-1]

array = [1,2,3,4,5,6,7,8,9]
smallest, largest = smallest_largest(array)
print("Smallest element:", smallest)
print("Largest element:", largest)
