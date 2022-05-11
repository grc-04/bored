import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String title;
  final String description;
  final double rating;
  final String imageUrl;
  bool isFavorite;

  Product({
    required this.title,
    required this.description,
    required this.rating,
    required this.imageUrl,
    this.isFavorite = false,
  });

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
