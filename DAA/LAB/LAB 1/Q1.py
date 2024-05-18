"""
1. Write a program to find the smallest element of an unsorted array of size N. 
Don't use any built-in functions/ methods like min() supported by certain programming 
languages. 
a. How many times does your loop execute? 
b. As the elements in the array changes (the size of the array remains same), will there be 
any change in the number of times the loop executes? What is the minimum and 
maximum number of times the loop executes? 
c. What is the time complexity of your program?
"""

def minArray(array):
    smallest = array[0]
    for i in array:
        if i<smallest:
            smallest = i
    return smallest

array = [3,6,8,3,6,-1]
print("Array : ", array)
print("Minimum value of array : ", minArray(array))