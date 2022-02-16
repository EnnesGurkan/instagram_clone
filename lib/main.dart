import 'package:flutter/material.dart';
import 'package:instagram_clone/views/home_page.dart';
import 'package:instagram_clone/views/login_page.dart';

import 'views/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Test',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ButtomBar());
  }
}
