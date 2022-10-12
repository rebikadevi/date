import 'package:date_time/screens/delivery_location.dart';
import 'package:date_time/screens/home_screen.dart';
import 'package:date_time/screens/my_orders.dart';
import 'package:date_time/screens/my_screen.dart';
import 'package:date_time/screens/myscrren1.dart';
import 'package:date_time/screens/new.dart';
import 'package:date_time/screens/order_history.dart';
import 'package:date_time/screens/product_get.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:HomeScreen(),
    );
  }
}



