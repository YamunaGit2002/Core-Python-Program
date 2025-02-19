#Write a Python program to remove duplicate characters of a given string. 
#Given input string
inp ="String and String Function"
#Initialize an empty string to store the result without duplicates
out = ""
#Iterate through each character in the input string
for ch in inp:
#Check if the character is already in the output string
    if ch not in out:  
#Append the character if it's not a duplicate
        out += ch
#Display the result
print("Output:", out)

#Output
String and Function

