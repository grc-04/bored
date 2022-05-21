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
        title: "Industry Baby",
        artist: "Lil Nas X",
        rating: 7.3,
        imageUrl:
            "https://i1.sndcdn.com/artworks-j1zGqEwf1STpMyZK-PRpXPg-t500x500.jpg"),
    Song(
        title: "First Class",
        artist: "Jack Harlow",
        rating: 7.8,
        imageUrl:
            "https://i.scdn.co/image/ab67616d0000b2730fbbde391655703a7c8cdc79"),
    Song(
        title: "WAP",
        artist: "Megan Thee Stallion",
        rating: 7.4,
        imageUrl:
            "https://pyxis.nymag.com/v1/imgs/3ed/586/1116cbade422ceefc6fa96110bfc56e0d1-cardi-b-megan-thee-stallion-wap.rsquare.w700.jpg"),
    Song(
        title: "abcdefu",
        artist: "Gayle",
        rating: 8.0,
        imageUrl:
            "https://i1.sndcdn.com/artworks-ifja3I2KBZJYQRNS-IFu4iQ-t500x500.jpg"),
    Song(
        title: "Rolling in the Deep",
        artist: "Adele",
        rating: 8.1,
        imageUrl:
            "https://i1.sndcdn.com/artworks-000109026918-2n3ayn-t500x500.jpg"),
  ];
  List<Song> get songs {
    return [..._songs];
  }
}
