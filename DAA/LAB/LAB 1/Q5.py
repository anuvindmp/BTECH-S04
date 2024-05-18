"""
5. Write an efficient program to find an element in an array which neither the smallest nor 
the largest. (Hint: you can do this without a loop.) 
a. What is the time complexity of your program? 
"""

def mid(array):
    array.sort()

    if len(array) < 3:
        return None
    else:
        return array[1]
    
array = [3,6,9,8,4,2,5,4,7,8,9]
print("not big/not small :", mid(array))