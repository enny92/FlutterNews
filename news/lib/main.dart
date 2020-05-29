import 'package:flutter/material.dart';
import 'package:news/viste/homepage.dart';
import 'package:news/app_bimby/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BimbyHome(),
        //'/': (context) => Home()
      },
    );
  }
}
