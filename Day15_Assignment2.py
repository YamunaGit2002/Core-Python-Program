# Function to count and display the total number of words in a text file

def count_words():
    try:
        with open("ABC.txt", "r") as file:  # Open the file in read mode
            total_words = 0  # Initialize word counter
            for line in file:  # Read line by line
                words = line.split()  # Split line into words
                total_words += len(words)  # Count words and add to total
            print("Total number of words:", total_words)  # Display total count
    except FileNotFoundError:  # Handle file not found error
        print("Error: The file 'ABC.txt' does not exist.")

# Call the function to count and display total words
count_words()

'''
Output Example (if ABC.txt contains):
Hello World
This is a test file.
Output:
Total number of words: 5
'''
