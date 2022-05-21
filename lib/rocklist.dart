import 'dart:ffi';

import 'package:bored/provider/pop.dart';
import 'package:bored/provider/rock.dart';
import 'package:bored/provider/song_provider.dart';
import 'package:bored/provider/songs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/movies.dart';
import './provider/movies_provider.dart';
import './movie_screen.dart';

class RockList extends StatelessWidget {
  const RockList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _rsong = Provider.of<RockSongs>(context, listen: false);
    final _rsonglist = _rsong.rocksongs;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _rsonglist.length,
        itemBuilder: (BuildContext context, index) {
          final Song song = _rsonglist[index];

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
                    _rsonglist[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
