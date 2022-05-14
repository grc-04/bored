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
            "http://cdn.shopify.com/s/files/1/0330/2175/5451/products/The-Kid-Laroi-Justin-Bieber---Stay-FL-Studio-Remake_1200x1200.png?v=1629758334"),
    Song(
        title: "Industry Baby",
        artist: "Lil Nas X",
        rating: 7.3,
        imageUrl:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.stereogum.com%2F2154748%2Flil-nas-x-industry-baby-feat-jack-harlow%2Fmusic%2F&psig=AOvVaw3SX6f0hZWFdUY2z31Jzfpc&ust=1652615389779000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCLjqxKD23vcCFQAAAAAdAAAAABAt"),
    Song(
        title: "First Class",
        artist: "Jack Harlow",
        rating: 7.8,
        imageUrl:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fopen.spotify.com%2Falbum%2F4uVXrwE4aSV2L2aqAHSOXa&psig=AOvVaw367ON6KfVDUdSI2gD1Vy11&ust=1652615551164000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCNjF0On23vcCFQAAAAAdAAAAABAJ"),
    Song(
        title: "WAP",
        artist: "Megan Thee Stallion",
        rating: 7.4,
        imageUrl:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.allure.com%2Fstory%2Fcardi-b-megan-thee-stallion-wap-cover-90s-updo-hairstyle&psig=AOvVaw1srtBf3_tTET07wBa8KlSD&ust=1652615605719000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCIiGj4T33vcCFQAAAAAdAAAAABAD"),
    Song(
        title: "abcdefu",
        artist: "Gayle",
        rating: 8.0,
        imageUrl:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpeermusic.com.br%2F2022%2F03%2F11%2Fgayle-abcdefu%2F&psig=AOvVaw0FSPY7OryHYEB21QysQAcz&ust=1652615741763000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCLiPjsf33vcCFQAAAAAdAAAAABAI"),
    Song(
        title: "Rolling in the Deep",
        artist: "Adele",
        rating: 8.1,
        imageUrl:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fsoundcloud.com%2Frevelic%2Frevelic-x-adele-rolling-in-the-deepest-remix-1&psig=AOvVaw2ERjLSGTVPcmw1-Uf29V6G&ust=1652615831639000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCPidoPD33vcCFQAAAAAdAAAAABAD"),
  ];
  List<Song> get songs {
    return [..._songs];
  }
}
