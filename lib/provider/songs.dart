import 'package:flutter/foundation.dart';

class Song with ChangeNotifier {
  final String title;
  final String artist;
  final double rating;
  final String imageUrl;
  bool isFavorite;

  Song({
    required this.title,
    required this.artist,
    required this.rating,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
