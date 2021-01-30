import 'package:flutter/material.dart';

import '../dummy_data.dart';

class MovieDetailScreen extends StatelessWidget {
  static const routeName = '/movie-detail';

  final Function toggleFavorite;
  final Function isFavorite;

  MovieDetailScreen(this.toggleFavorite, this.isFavorite);

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final movieId = ModalRoute.of(context).settings.arguments as String;
    final selectedMovie =
        DUMMY_MOVIES.firstWhere((movie) => movie.id == movieId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMovie.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMovie.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Atores'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Colors.white,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selectedMovie.actors[index])),
                ),
                itemCount: selectedMovie.actors.length,
              ),
            ),
            buildSectionTitle(context, 'Descrição'),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              height: 150,
              width: 350,
              child: SingleChildScrollView(
                child: Text(selectedMovie.description),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavorite(movieId) ? Icons.star : Icons.star_border,
        ),
        onPressed: () => toggleFavorite(movieId),
      ),
    );
  }
}
