class Movie {
  String title;
  double rating;

  Movie(this.title, this.rating);
}

void main() {
  List<Movie> movies = [
    Movie("The Shawshank Redemption", 9.3),
    Movie("Titanic", 7.2),
    Movie("The Room", 3.7),
    Movie("Interstellar", 8.6),
  ];

  for (Movie movie in movies) {
    if (movie.rating > 7) {
      print("Title: ${movie.title}, Rating: ${movie.rating}");
    }
  }
}
