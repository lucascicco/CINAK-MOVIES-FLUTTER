import 'package:flutter/material.dart';

import '../models/movie.dart';
import '../widgets/movie_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Movie> favoriteMovies;

  FavoritesScreen(this.favoriteMovies);

  @override
  Widget build(BuildContext context) {
    if (favoriteMovies.isEmpty) {
      return Center(
        child: Text('Você ainda não tem nenhum filme favorito, escolha um!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MovieItem(
            id: favoriteMovies[index].id,
            title: favoriteMovies[index].title,
            imageUrl: favoriteMovies[index].imageUrl,
            duration: favoriteMovies[index].duration,
            description: favoriteMovies[index].description,
            age: favoriteMovies[index].age,
          );
        },
        itemCount: favoriteMovies.length,
      );
    }
  }
}
