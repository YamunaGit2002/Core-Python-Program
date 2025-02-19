#Write a Python program to Count all letters, digits, and special symbols from the given 
#Defining the input string
input_str = "P@#yn26at^&i5ve"
#Count the number of alphabetic characters
chars = sum(c.isalpha() for c in input_str)
#Count the number of digits
digits = sum(c.isdigit() for c in input_str)
#Calculate the number of special symbols
symbols = len(input_str) - chars - digits
#Print the results
print(f"Chars=",chars)
print(f"Digits=",digits)
print(f"Symbols =",symbols)

#Output
Chars= 8
Digits= 3
Symbols = 4

