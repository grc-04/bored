import 'package:flutter/foundation.dart';

class Movie with ChangeNotifier {
  final String title;
  final String description;
  final double rating;
  final String imageUrl;
  bool isFavorite;

  Movie({
    required this.title,
    required this.description,
    required this.rating,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
