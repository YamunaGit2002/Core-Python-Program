#Python Program to Find the Largest Among Three Numbers
def find_largest(num1, mum2, num3):
#Function to find the largest among three numbers
    return max(num1, num2, num3)
#Taking three numbers as input from the user
num1 = float(input("Enter first number: "))
num2 = float(input("Enter second number: "))
num3 = float(input("Enter third number: "))
# Finding the largest number
largest = find_largest(num1, num2, num3)
# Printing the largest number
print(f"The largest number is {largest}")

#Output
Enter first number: 13
Enter second number: 9
Enter third number: 2
The largest number is 13.0

