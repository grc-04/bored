import 'dart:ffi';

import 'package:bored/provider/indian.dart';
import 'package:bored/provider/pop.dart';
import 'package:bored/provider/rock.dart';
import 'package:bored/provider/song_provider.dart';
import 'package:bored/provider/songs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/movies.dart';
import './provider/movies_provider.dart';
import './movie_screen.dart';

class IndianList extends StatelessWidget {
  const IndianList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isong = Provider.of<IndianSongs>(context, listen: false);
    final _isonglist = _isong.indiansongs;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _isonglist.length,
        itemBuilder: (BuildContext context, index) {
          final Song song = _isonglist[index];

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
                    _isonglist[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
