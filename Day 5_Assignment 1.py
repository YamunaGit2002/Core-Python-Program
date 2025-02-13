#Declare a div() function with two parameters. Then call the function and pass two numbers and display their division. 
#Function to perform division
def div(num1, num2):
#Check if denominator is zero to avoid division error
    if num2 == 0:
        return "Division by zero is not allowed!"
# Return the division result
    return num1 / num2  
#Calling the function with two numbers
result = div(10, 2)
#Display the result
print(f"Division result:",result)

#Output
Division result: 5.0
