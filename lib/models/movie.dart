import 'package:flutter/foundation.dart';

class Movie {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> actors;
  final String description;
  final int duration;

  final int age;

  const Movie(
      {@required this.id,
      @required this.categories,
      @required this.title,
      @required this.imageUrl,
      @required this.actors,
      @required this.description,
      @required this.duration,
      @required this.age});
}
