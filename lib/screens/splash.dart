import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/screens/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      /*    Navigator.push(
          context, MaterialPageRoute(builder: (_) =>  HomePage()));*/

      Get.offAll(const HomePage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/fb.png",
              width: 40,
            )
          ],
        ),
      ),
    );
  }
}
