// ignore_for_file: unused_local_variable

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/movies.dart';
import './provider/movies_provider.dart';
import './movie_screen.dart';
import './provider/action.dart';

class ActionMoviesList extends StatelessWidget {
  const ActionMoviesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _actionmovie = Provider.of<ActionM>(context, listen: false);
    final _actionmovieslist = _actionmovie.actionmovies;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _actionmovieslist.length,
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            onTap: (() {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => MovieScreen()));
            }),
            child: Padding(
              padding: EdgeInsets.all(4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: 300,
                  width: 125,
                  child: Image.network(
                    _actionmovieslist[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
