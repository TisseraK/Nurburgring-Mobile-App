import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:nurburgring_app/authScreen.dart';
import 'package:nurburgring_app/constant.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Get.to(
        AuthScreen(),
        transition: Transition.fadeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      color: redFromN,
      child: Center(
        child: Image.asset("assets/logoSplashScreenPNG.png"),
      ),
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
