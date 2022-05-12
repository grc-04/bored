import 'package:bored/parallax.dart';
import 'package:flutter/material.dart';
import './parallax.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "bored?",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Ubuntu",
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
        body: ExampleParallax(),
      ),
    );
  }
}
