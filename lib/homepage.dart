// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class _MyHomepage extends StatefulWidget {
  const _MyHomepage({Key? key}) : super(key: key);

  @override
  State<_MyHomepage> createState() => __MyHomepageState();
}

class __MyHomepageState extends State<_MyHomepage> {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: editingController,
        decoration: InputDecoration(
            labelText: "Search",
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)))),
      ),
    );
  }
}
