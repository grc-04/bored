// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'songs.dart';

class RockSongs with ChangeNotifier {
  List<Song> _rocksongs = [
    Song(
        title: "Stay",
        artist: "Justin Bieber",
        rating: 8.4,
        imageUrl:
            "https://images.genius.com/d8a68a3aac2ab79bd4d4c5ee33fd69fa.1000x1000x1.png"),
    Song(
        title: "Bad Romance",
        artist: "Lady Gaga",
        rating: 7.3,
        imageUrl:
            "https://i.scdn.co/image/ab67616d0000b273c8e5391a619e9e8ea2162073"),
    Song(
        title: "Beautiful Mistakes",
        artist: "Jack Harlow",
        rating: 7.8,
        imageUrl:
            "https://i1.sndcdn.com/artworks-000127380203-93pa4d-t500x500.jpg"),
    Song(
        title: "WAP",
        artist: "Megan Thee Stallion",
        rating: 7.4,
        imageUrl:
            "https://www.stretta-music.com/media/images/803/681803_detail-00.jpg"),
    Song(
        title: "abcdefu",
        artist: "Gayle",
        rating: 8.0,
        imageUrl:
            "https://i.scdn.co/image/ab67616d0000b273bc9b44e950d5440ff65ea926"),
    Song(
        title: "Rolling in the Deep",
        artist: "Adele",
        rating: 8.1,
        imageUrl: "https://img.cdandlp.com/2017/04/imgL/118690699.jpg"),
  ];
  List<Song> get rocksongs {
    return [..._rocksongs];
  }
}
