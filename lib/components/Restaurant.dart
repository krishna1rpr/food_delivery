import 'package:flutter/material.dart';
//
// class MovieResponse {
//   int totalResults;
//   List<Movie> results;
//   MovieResponse({this.page, this.totalResults, this.totalPages, this.results});
//   MovieResponse.fromJson(Map<String, dynamic> json) {
//     page = json['page'];
//     totalResults = json['total_results'];
//     if (json['results'] != null) {
//       results = new List<Movie>();
//       json['results'].forEach((v) {
//         results.add(new Movie.fromJson(v));
//       });
//     }
//   }
//   class Movie {
//     int id;
//     var voteAverage;
//     String title;
//     String posterPath;
//     String overview;
//     String releaseDate;
//     Movie({
//       this.id,
//       this.voteAverage,
//       this.title,
//       this.posterPath,,
//       this.overview,
//       this.releaseDate});
//       Movie.fromJson(Map<String, dynamic> json) {
//       id = json['id'];
//       voteAverage = json['vote_average'];
//       title = json['title'];
//       posterPath = json['poster_path'];
//       overview = json['overview'];
//       releaseDate = json['release_date'];
//     }
//   }
//

class RestaurantInfo{

  String name;
  String description;
  String image;
  String rating;

  RestaurantInfo(
      this.name,
      this.description,
      this.image,
      this.rating
      );
}

class Restaurant extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Center(
      child: Card(
        color: Colors.grey,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Center(
              child: new AspectRatio(
                aspectRatio: 2.5,
                child: new Container(
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                        fit: BoxFit.fitWidth,
                        alignment: FractionalOffset.topCenter,
                        image: new NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      )
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("RESTAURANT NAME")
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Text("RATING!!")
                ),
              ],
            ),
            Flexible(
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut l.")
            )
          ],
        ),
      ),
    );
  }
}