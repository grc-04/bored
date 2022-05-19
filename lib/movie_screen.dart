// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:bored/provider/movies.dart';
import 'package:bored/provider/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    final _movie = Provider.of<Movies>(context, listen: false);
    final _mlist = _movie.movies;
    int i = 0;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Stack(fit: StackFit.expand, children: [
        for (int i = 0; i < _mlist.length; i++)
          ListView.builder(
            itemCount: 1,
            shrinkWrap: true,
            itemBuilder: (context, i) => Image(
              // ignore: prefer_const_constructors
              image: NetworkImage(_mlist[i].imageUrl),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        DraggableScrollableSheet(
            expand: true,
            initialChildSize: 0.5,
            minChildSize: 0.5,
            maxChildSize: 1.0,
            builder: (context, controller) => ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Container(
                    width: double.infinity,
                    color: Colors.black,
                    child: SingleChildScrollView(
                        child: ListView.builder(
                      controller: controller,
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) => Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image.network(
                                      "https://i.gadgets360cdn.com/large/disney_plus_hotstar_logo_1583901149861.jpg",
                                      height: 120,
                                      width: 120,
                                      alignment: Alignment.center,
                                    ),
                                  ))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Title : ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Ubuntu',
                                    fontSize: 25),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  _mlist[index].title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Ubuntu',
                                      fontSize: 25),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Rating : ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Ubuntu',
                                    fontSize: 25),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  _mlist[index].rating.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Ubuntu',
                                      fontSize: 25),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Description : ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Ubuntu',
                                    fontSize: 25),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    _mlist[index].description,
                                    maxLines: 20,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Ubuntu',
                                        fontSize: 20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
                  ),
                )),
      ]),
    );
  }
}
