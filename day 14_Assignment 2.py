#Write a Python program that prompts the user to input an integer and raises a ValueError exception if the input is not a valid integer
try:
#Taking input from user
    user_input = input("Enter an integer: ")
#Convert input to integer
    number = int(user_input)
#Print the valid integer
    print("You entered:{number}")
except ValueError:
#Handle invalid input
    print("Error: Invalid input! Please enter a valid integer.")

#Output
Enter an integer: 0.13
Error: Invalid input! Please enter a valid integer.
