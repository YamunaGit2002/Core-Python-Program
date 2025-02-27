# Function to read content from a text file line by line and display it

def read_file():
    try:
        with open("ABC.txt", "r") as file:  # Open the file in read mode
            for line in file:  # Read line by line
                print(line.strip())  # Display each line without extra newline
    except FileNotFoundError:  # Handle file not found error
        print("Error: The file 'ABC.txt' does not exist.")

# Call the function to read and display file content
read_file()

'''
Output Example (if ABC.txt contains):
Hello World
This is a test file.
Output:
Hello World
This is a test file.
'''
