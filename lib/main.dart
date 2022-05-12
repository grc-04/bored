// ignore_for_file: prefer_const_constructors, avoid_types_as_parameter_names, non_constant_identifier_names

import 'dart:async';

import 'package:bored/app_drawer.dart';
import 'package:bored/movies_list.dart';
import 'package:bored/provider/movies_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:bored/firebase_options.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import './movies_list.dart';
import './provider/movies.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Stream<QuerySnapshot> movies =
      FirebaseFirestore.instance.collection("movies").snapshots();

  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Movies())],
      child: MaterialApp(
          theme: ThemeData(
              primaryColor: Color.fromRGBO(35, 35, 35, 10),
              accentColor: Colors.white),
          home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [],
            ),
            drawer: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Colors.black,
              ),
              child: AppDrawer(),
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                textDirection: TextDirection.rtl,
                children: [
                  TextField(
                    cursorColor: Colors.white,
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
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "What's Popular?",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 170, child: MoviesList()),
                ],
              ),
            ),
          )),
    );
  }
}
