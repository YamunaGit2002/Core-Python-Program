#Lab2:Movie Library Create a class MovieLibrary that manages a collection of movies: 
class MovieLibrary:
#Class attribute: List of available movies in the library
    available_movies = ["Inception", "Titanic", "Interstellar", "The Matrix", "Avatar"]
    def __init__(self, member_name):
        self.member_name = member_name  
        self.borrowed_movies = []  

    def borrow_movie(self, movie):
#Check if the movie is available
        if movie in MovieLibrary.available_movies:  
#Remove from available movies
            MovieLibrary.available_movies.remove(movie)  
#Add to the member's borrowed list
            self.borrowed_movies.append(movie)  
            print(f"{self.member_name} borrowed '{movie}'.")
        else:
            print(f"Sorry, '{movie}' is not available.")

    def return_movie(self, movie):
#Check if the member borrowed the movie
        if movie in self.borrowed_movies:  
#Remove from borrowed list
            self.borrowed_movies.remove(movie)  
#Add back to available movies
            MovieLibrary.available_movies.append(movie)  
            print(f"{self.member_name} returned '{movie}'.")
        else:
            print(f"You cannot return '{movie}' as you haven't borrowed it.")

    def view_borrowed_movies(self):
        if self.borrowed_movies:
            print(f"{self.member_name} has borrowed: {', '.join(self.borrowed_movies)}")
        else:
            print(f"{self.member_name} has not borrowed any movies.")
    @classmethod
    def view_available_movies(cls):
        if cls.available_movies:
            print(f"Available movies: {', '.join(cls.available_movies)}")
        else:
            print("No movies are currently available.")
#Example Usage
member1 = MovieLibrary("Alice")
member1.borrow_movie("Inception")
member1.view_borrowed_movies()
member1.return_movie("Inception")
member1.view_borrowed_movies()


#Output
Alice borrowed 'Inception'.
Alice has borrowed: Inception
Alice returned 'Inception'.
Alice has not borrowed any movies.

