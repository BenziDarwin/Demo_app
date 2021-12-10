import 'package:flutter/material.dart';
import 'package:flutter_payment_app/pages/my_home_page.dart';
import 'package:flutter_payment_app/pages/payment_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        "/payment": (context) => PaymentPage(),
      },
    );
  }
}

