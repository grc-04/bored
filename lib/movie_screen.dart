// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:ui';

import 'package:bored/provider/movies.dart';
import 'package:bored/provider/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieScreen extends StatelessWidget {
  final Movie movie;
  MovieScreen(this.movie);

  @override
  Widget build(BuildContext context) {
    final _movie = Provider.of<Movies>(context, listen: false);
    final _mlist = _movie.movies;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Stack(fit: StackFit.expand, children: [
        Image(
          // ignore: prefer_const_constructors
          image: NetworkImage(movie.imageUrl),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        DraggableScrollableSheet(
          expand: true,
          initialChildSize: 0.1,
          minChildSize: 0.1,
          maxChildSize: 1.0,
          builder: (context, controller) => ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Container(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                  child: Container(
                    width: double.infinity,
                    color: Colors.transparent,
                    child: SingleChildScrollView(
                        child: ListView.builder(
                      controller: controller,
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () => _launchURL1(),
                                  child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.network(
                                          "https://i.gadgets360cdn.com/large/disney_plus_hotstar_logo_1583901149861.jpg",
                                          height: 90,
                                          width: 90,
                                          alignment: Alignment.center,
                                        ),
                                      )),
                                ),
                                GestureDetector(
                                  onTap: () => _launchURL3(),
                                  child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.network(
                                          "https://m.media-amazon.com/images/G/01/support_images/GUID-A5E374A8-16DA-4B39-8E3F-3F3B34E831FB=2=en-US=Normal.png",
                                          height: 90,
                                          width: 90,
                                          alignment: Alignment.center,
                                        ),
                                      )),
                                ),
                                GestureDetector(
                                  onTap: () => _launchURL2(),
                                  child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.network(
                                          "https://cdn.vox-cdn.com/thumbor/Yq1Vd39jCBGpTUKHUhEx5FfxvmM=/39x0:3111x2048/1200x800/filters:focal(39x0:3111x2048)/cdn.vox-cdn.com/uploads/chorus_image/image/49901753/netflixlogo.0.0.png",
                                          height: 90,
                                          width: 90,
                                          alignment: Alignment.center,
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Title : ",
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Uber',
                                    fontSize: 25),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  movie.title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Uber',
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
                                    fontFamily: 'Uber',
                                    fontSize: 25),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  movie.rating.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Uber',
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
                                    fontFamily: 'Uber',
                                    fontSize: 25),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    movie.description,
                                    maxLines: 20,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Uber',
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
                ),
              )),
        )
      ]),
    );
  }
}

_launchURL1() async {
  const url = 'https://www.hotstar.com/in';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'https://www.netflix.com/in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  const url = 'https://www.primevideo.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
