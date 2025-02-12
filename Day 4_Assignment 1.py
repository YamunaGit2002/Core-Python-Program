#Python program to check leap year  or not.
#Function to check if a year is a leap year
def is_leap_year(year):
    if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
        return True
    else:
        return False
#Taking input
year = int(input("Enter a year: "))
#Checking if the year is a leap year and printing the result
if is_leap_year(year):
    print(f"{year} is a leap year.")
else:
    print(f"{year} is not a leap year.")

#Output
Enter a year: 2024
2024 is a leap year.
