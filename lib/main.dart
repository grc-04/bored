// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Color.fromRGBO(35, 35, 35, 10),
            accentColor: Colors.white),
        home: Scaffold(
          backgroundColor: Color.fromRGBO(35, 35, 35, 10),
          appBar: AppBar(
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              GFButton(
                onPressed: () {},
                text: """  Want personalized
  recommendations?""",
                shape: GFButtonShape.pills,
                type: GFButtonType.outline,
                size: GFSize.SMALL,
                color: GFColors.WHITE,
                textStyle: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
                constraints: BoxConstraints(minHeight: 1, minWidth: 1),
              )
            ],
          ),
        ));
  }
}
