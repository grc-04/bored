// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:bored/firebase_options.dart';

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
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.add))
              ],
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
                      controller: editingController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "New & Popular!",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ))));
  }
}
