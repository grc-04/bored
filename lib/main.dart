// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import './homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController editingController = TextEditingController();

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
            body: Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: editingController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    )),
              ),
            )));
  }
}
