#Write a python program finding the factorial of a given number using a while loop.
#Assigning a number
num = 5  
#Initializing factorial result
fact = 1
# Start loop variable from 1
i = 1
#Calculate factorial using while loop
while i <= num:
#Multiply fact by the current value of i
    fact *= i  
#Increase i by 1
    i= i+1  
#Print the factorial result
print(f"Factorial of 5 is:", fact)

#Output
Factorial of 5 is: 120
