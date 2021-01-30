import 'package:flutter/material.dart';

import './dummy_data.dart';
import './screens/tabs_screen.dart';
import 'screens/movie_detail_screen.dart';
import 'screens/category_movies_screen.dart';
import './screens/filters_screen.dart';
import './screens/categories_screen.dart';
import 'models/movie.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'fifth': false,
    'forth': false,
    'third': false,
    'second': false,
    'free': false,
  };

  List<Movie> _availableMovies = DUMMY_MOVIES;
  List<Movie> _favoriteMovies = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableMovies = DUMMY_MOVIES.where((movie) {
        if (_filters['fifth'] && movie.age == 18) {
          return true;
        }
        if (_filters['third'] && movie.age >= 16) {
          return true;
        }
        if (_filters['third'] && movie.age >= 14) {
          return true;
        }
        if (_filters['second'] && movie.age >= 12) {
          return false;
        }
        if (_filters['free'] && movie.age >= 10) {
          return true;
        }
        return false;
      }).toList();
    });
  }

  void _toggleFavorite(String movieId) {
    final existingIndex =
        _favoriteMovies.indexWhere((movie) => movie.id == movieId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteMovies.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteMovies.add(
          DUMMY_MOVIES.firstWhere((movie) => movie.id == movieId),
        );
      });
    }
  }

  bool _isMovieFavorite(String id) {
    return _favoriteMovies.any((movie) => movie.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CINAK FILMES',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.black,
        canvasColor: Colors.white,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => TabsScreen(_favoriteMovies),
        CategoryMovieScreen.routeName: (ctx) =>
            CategoryMovieScreen(_favoriteMovies),
        MovieDetailScreen.routeName: (ctx) =>
            MovieDetailScreen(_toggleFavorite, _isMovieFavorite),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_filters, _setFilters),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}
