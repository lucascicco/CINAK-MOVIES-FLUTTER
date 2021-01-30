import 'package:flutter/material.dart';

import '../widgets/movie_item.dart';
import '../models/movie.dart';
import '../dummy_data.dart';

class CategoryMovieScreen extends StatefulWidget {
  static const routeName = '/category-movies';

  final List<Movie> availableMovies;

  CategoryMovieScreen(this.availableMovies);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMovieScreen> {
  String categoryTitle;
  List<Movie> displayedMovies;
  var _loadedInitData = false;

  @override
  void initState() {
    // ...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayedMovies = widget.availableMovies.where((movie) {
        return movie.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeMovie(String movieId) {
    setState(() {
      displayedMovies.removeWhere((movie) => movie.id == movieId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MovieItem(
            id: displayedMovies[index].id,
            title: displayedMovies[index].title,
            imageUrl: displayedMovies[index].imageUrl,
            duration: displayedMovies[index].duration,
            description: displayedMovies[index].description,
            age: displayedMovies[index].age,
          );
        },
        itemCount: displayedMovies.length,
      ),
    );
  }
}
