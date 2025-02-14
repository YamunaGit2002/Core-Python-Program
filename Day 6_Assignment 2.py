#Write a python program to check whether a number is palindrome or not
#Assigning number
num = 121
#storing th original number
org_num= num
#Initializing reversed number
rev = 0 
#Reverse the number using a while loop
while num > 0:
#Extract last digit and add to reversed number
    rev = rev * 10 + num % 10  
#Remove last digit
    num = num // 10  
#Checking if the original and reversed numbers are the same
if org_num == rev:
    print(f"{org_num} is a Palindrome number")
else:
    print(f"{org_num} is NOT a Palindrome number")

#Output
121 is a Palindrome number

