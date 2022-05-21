// ignore_for_file: prefer_const_constructors

import 'package:bored/homepage.dart';
import 'package:bored/main.dart';
import 'package:bored/movies_list.dart';
import 'package:bored/songs_page.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
              colors: [
                Color.fromRGBO(0, 0, 0, 10),
                Color.fromRGBO(67, 67, 67, 10)
              ])),
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: Column(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Movies',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Uber",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                'Songs',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Uber",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SongsPage()));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                'TV Series',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Uber",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text(
                'Anime',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Uber",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text(
                'Books',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Uber",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
