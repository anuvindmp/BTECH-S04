"""
6. Write an efficient program to check if a given number is prime or not. 
a. What is the time complexity of the algorithm? 
b. Show that the problem can be solved in root(n) time.
"""

def checkPrime(n):
    for i in range(2, n//2+1):
        if n % i == 0:
            return f"{n} is not prime"
    return f"{n} is prime"

print("O(n) time complexity")
print(checkPrime(4))
print(checkPrime(7))

#root(n) time complexity problem

import math

def checkPrime(n):
    if n == 2:
        return f"{n} is prime"
    if n % 2 == 0:
        return f"{n} is not prime"
    sqrt_n = int(math.sqrt(n)) + 1
    for i in range(3, sqrt_n, 2):
        if n % i == 0:
            return f"{n} is not prime"
    return f"{n} is prime"

print("\nO(root(n)) time complexity")
print(checkPrime(7))
print(checkPrime(4))  

