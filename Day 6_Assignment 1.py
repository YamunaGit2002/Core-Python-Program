#Write a python program to reverse a number using a while loop. 
# Assigning number number
num = 211
# Initialize reversed number
rev = 0
while num > 0:
# Extract last digit and add to reversed number
    rev = rev * 10 + num % 10  
#Remove last digit
    num = num // 10 
#Print the reversed number
print(f"Reversed number:", rev)

#Output
Reversed number: 112

