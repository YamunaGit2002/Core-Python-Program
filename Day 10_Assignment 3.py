#Write a Python program to find duplicate values from a list and display those.
#Assign a list with duplicate values
numbers=[4, 7, 1, 9, 3, 6, 4, 9, 7, 2]
#Initialize an empty list to store duplicates
duplicates=[]
#Loop through the list
for i in range(len(numbers)):
    for j in range(i + 1, len(numbers)):  
        if numbers[i] == numbers[j] and numbers[i] not in duplicates:
            duplicates.append(numbers[i])  
#Print the duplicate values
print("Duplicate values in the list are:", duplicates)

#Output
Duplicate values in the list are: [4, 7, 9]

