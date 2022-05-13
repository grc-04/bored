import 'package:flutter/material.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie UI',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i1.sndcdn.com/artworks-000164479778-k1j8dx-t500x500.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 400),
                  child: Container(
                    height: 400,
                    width: 500,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(49, 39, 40, 0.97),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 30.0, right: 170),
                          child: Text(
                            'Another Day',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 25),
                          child: Row(
                            children: const [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                child: Image(
                                  image: NetworkImage(
                                      'https://www.scdn.co/i/_global/twitter_card-default.jpg'),
                                  height: 90,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                child: Image(
                                  image: NetworkImage(
                                      'https://cdn.vox-cdn.com/thumbor/-OYBq1Z1bqQO9HwSKz1HvOLz0ss=/1400x1400/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/16022492/Screen_Shot_2019_04_10_at_11.45.32_AM.png'),
                                  height: 90,
                                  width: 80,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                child: Image(
                                  image: NetworkImage(
                                      'https://play-lh.googleusercontent.com/76AjYITcB0dI0sFqdQjNgXQxRMlDIswbp0BAU_O5Oob-73b6cqKggVlAiNXQAW5Bl1g'),
                                  height: 90,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 20),
                          child: Row(
                            children: const [
                              Text(
                                'Album:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                'Images and Words',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 20),
                          child: Row(
                            children: const [
                              Text(
                                'Artist:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                'Dream Theatre',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 20),
                          child: Row(
                            children: const [
                              Text(
                                'Time:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                '4m 23s',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
