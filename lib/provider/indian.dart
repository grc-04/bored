// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'songs.dart';

class IndianSongs with ChangeNotifier {
  List<Song> _indiansongs = [
    Song(
        title: "Stay",
        artist: "Justin Bieber",
        rating: 8.4,
        imageUrl:
            "https://i.scdn.co/image/ab67616d0000b273777b9a80976c9698279f8fe1"),
    Song(
        title: "Bad Romance",
        artist: "Lady Gaga",
        rating: 7.3,
        imageUrl:
            "https://i.scdn.co/image/ab67616d0000b27301fcbb24da5d0bbe4c33581e"),
    Song(
        title: "Beautiful Mistakes",
        artist: "Jack Harlow",
        rating: 7.8,
        imageUrl:
            "https://i1.sndcdn.com/artworks-SvA7DeqebZXkwduV-oP6OcA-t500x500.jpg"),
    Song(
        title: "WAP",
        artist: "Megan Thee Stallion",
        rating: 7.4,
        imageUrl:
            "https://i1.sndcdn.com/artworks-000067232842-vsy6go-t500x500.jpg"),
    Song(
        title: "abcdefu",
        artist: "Gayle",
        rating: 8.0,
        imageUrl:
            "https://i.scdn.co/image/ab67616d0000b27306e5b12eca32ade5a3874b6c"),
    Song(
        title: "Rolling in the Deep",
        artist: "Adele",
        rating: 8.1,
        imageUrl:
            "https://i.scdn.co/image/ab67616d0000b27315427b8cfd92035f66bc1b94"),
  ];
  List<Song> get indiansongs {
    return [..._indiansongs];
  }
}
