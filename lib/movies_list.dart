import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/movies.dart';
import './provider/movies_provider.dart';
import './movie_screen.dart';

class MoviesList extends StatelessWidget {
  const MoviesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _movie = Provider.of<Movies>(context, listen: false);
    final _movieslist = _movie.movies;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _movieslist.length,
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
                  width: 100,
                  child: Image.network(
                    _movieslist[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
