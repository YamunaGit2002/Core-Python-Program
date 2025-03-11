#Lab1:Write a Python program to model a Library system.
class Library:
#Class attributes to store total books and a list of all available books
    total_books = 0
    all_books = []
    def __init__(self, name):
#Instance attribute to store member's name and to track borrowed books
        self.name = name  
        self.borrowed_books = []  
    def borrow_book(self, book):
#Check if the book is available in the library
        if book in Library.all_books:  
#Add book to member's borrowed list
            self.borrowed_books.append(book)  
#Remove book from library
            Library.all_books.remove(book)  
#Decreasing total book count
            Library.total_books -= 1  
            print(f"{self.name} borrowed '{book}'.")
        else:
            print("Book not available.")
    def return_book(self, book):
#Check if the book is in member's borrowed list
        if book in self.borrowed_books:  
#Remove from member's borrowed books
            self.borrowed_books.remove(book)  
#Add back to library
            Library.all_books.append(book)  
#Increase total book count
            Library.total_books += 1  
            print(f"{self.name} returned '{book}'.")
        else:
            print("This book was not borrowed from the library.")
    @classmethod
    def view_library_books(cls):
        print(f"Total books in library: {cls.total_books}")
        print("Available books:", cls.all_books if cls.all_books else "Books not available")

#Initializing library with books
Library.all_books = ["Python Basics", "Machine Learning", "Data Science", "Cyber Security"]
Library.total_books = len(Library.all_books)
#Creating library members
member1 = Library("Alice")
member2 = Library("Bob")
#Viewing available books
Library.view_library_books()
#Borrowing books
member1.borrow_book("Python Basics")
member2.borrow_book("Cyber Security")
#Viewing available books after borrowing
Library.view_library_books()
#Returning books
member1.return_book("Python Basics")
#Viewing available books after returning
Library.view_library_books()

#Output
Total books in library: 4
Available books: ['Python Basics', 'Machine Learning', 'Data Science', 'Cyber Security']
Alice borrowed 'Python Basics'.
Bob borrowed 'Cyber Security'.
Total books in library: 2
Available books: ['Machine Learning', 'Data Science']
Alice returned 'Python Basics'.
Total books in library: 3
Available books: ['Machine Learning', 'Data Science', 'Python Basics']





