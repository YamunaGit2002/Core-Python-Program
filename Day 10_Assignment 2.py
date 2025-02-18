#Write a Python program to get the largest and smallest number from a list without built in functions. 
#Assign a list of numbers
numbers = [4, 7, 1, 9, 3, 6]  
#Initialize largest and smallest with the first element of the list
largest = numbers[0]
smallest = numbers[0]
#Loop through the list to find the largest and smallest numbers
for num in numbers:
    if num > largest:
        largest=num
    if num < smallest:
        smallest=num
#Print the results
print("Largest number in the list is:", largest)
print("Smallest number in the list is:", smallest)

#Output
Largest number in the list is: 9
Smallest number in the list is: 1
