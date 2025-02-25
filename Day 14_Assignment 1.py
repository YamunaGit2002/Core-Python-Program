#Write a Python program to handle a ZeroDivisionError exception when dividing a number by zero.
def divide_numbers():
    try:
#Getting numbers
        numerator=float(input("Enter numerator:"))  
        denominator=float(input("Enter denominator:"))  
        result=numerator/denominator  
    except ZeroDivisionError:
#Handle division by zero error
        print("Error:Cannot divide by zero.")  
    else:
#Executes if no exception occurs
        print("Result:", result)  
#Call the function
divide_numbers()  

#Output
Enter numerator: 13
Enter denominator: 0
Error: Cannot divide by zero.
