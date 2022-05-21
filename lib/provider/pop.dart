// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'songs.dart';

class Songs with ChangeNotifier {
  List<Song> _songs = [
    Song(
        title: "Stay",
        artist: "Justin Bieber",
        rating: 8.4,
        imageUrl:
            "https://i1.sndcdn.com/artworks-NTWumskIAtzxndKO-yz1ryA-t500x500.jpg"),
    Song(
        title: "Bad Romance",
        artist: "Lady Gaga",
        rating: 7.3,
        imageUrl:
            "https://i1.sndcdn.com/artworks-000004603312-1f4wvo-t500x500.jpg"),
    Song(
        title: "Beautiful Mistakes",
        artist: "Jack Harlow",
        rating: 7.8,
        imageUrl:
            "https://i.scdn.co/image/ab67616d0000b273d3e7e1feff01396e625656a4"),
    Song(
        title: "WAP",
        artist: "Megan Thee Stallion",
        rating: 7.4,
        imageUrl:
            "https://images.genius.com/40757ff63699cf034c05466a444ec5fd.611x646x1.jpg"),
    Song(
        title: "abcdefu",
        artist: "Gayle",
        rating: 8.0,
        imageUrl:
            "https://m.media-amazon.com/images/M/MV5BZDgyNTNiYTUtNzQ2YS00MTVhLWE3OTctYTNiN2M3MWViODg3XkEyXkFqcGdeQXVyNjE0ODc0MDc@._V1_.jpg"),
    Song(
        title: "Rolling in the Deep",
        artist: "Adele",
        rating: 8.1,
        imageUrl:
            "https://m.media-amazon.com/images/M/MV5BYTZkOGVhMDEtOGEzZS00NjRhLTg5NmUtZWUyN2UxYzZmNDJhXkEyXkFqcGdeQXVyNjk5NzY4OTk@._V1_.jpg"),
  ];
  List<Song> get songs {
    return [..._songs];
  }
}
