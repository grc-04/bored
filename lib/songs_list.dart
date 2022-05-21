import 'dart:ffi';

import 'package:bored/provider/song_provider.dart';
import 'package:bored/provider/songs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/movies.dart';
import './provider/movies_provider.dart';
import './movie_screen.dart';

class SongsList extends StatelessWidget {
  const SongsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _song = Provider.of<Songs>(context, listen: false);
    final _songslist = _song.songs;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _songslist.length,
        itemBuilder: (BuildContext context, index) {
          final Song song = _songslist[index];

          return GestureDetector(
            onTap: (() {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => MovieScreen(movie)));
            }),
            child: Padding(
              padding: EdgeInsets.all(4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: 200,
                  width: 125,
                  child: Image.network(
                    _songslist[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
