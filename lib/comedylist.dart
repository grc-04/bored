import 'dart:ffi';

import 'package:bored/provider/comedy.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/movies.dart';
import './provider/movies_provider.dart';
import './movie_screen.dart';

class ComedyMoviesList extends StatelessWidget {
  const ComedyMoviesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _comedy = Provider.of<ComedyM>(context, listen: false);
    final _comedylist = _comedy.comedymovies;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _comedylist.length,
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MovieScreen()));
            }),
            child: Padding(
              padding: EdgeInsets.all(4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: 200,
                  width: 125,
                  child: Image.network(
                    _comedylist[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
