import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/screens/homepage.dart';
import 'package:whatsapp/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
