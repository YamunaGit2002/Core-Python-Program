#Python Program to Check if a Number is Positive, Negative, or Zero
def check_number(n):
#Function to check if a number is positive, negative, or zero
    if n > 0:
        return "Positive"
    elif n < 0:
        return "Negative"
    else:
        return "Zero"
#Taking input from the user
num = float(input("Enter a number: "))
#Checking the nature of the number
result = check_number(num)
#Printing the result
print(f"The number is {result}.")

#Output
Enter a number: -3
The number is Negative.



