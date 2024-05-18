"""
7. Write an efficient program to find the GCD (also called HCF) of two given numbers. 
a. What is the time complexity of the algorithm? 
b. Find an input that requires maximum number of iterations to solve.
"""

def HCF(n, m):
    while m:
        n, m = m, n % m
    return n

print("HCF : ", HCF(4, 8))

    
    