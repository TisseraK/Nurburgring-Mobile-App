import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:nurburgring_app/authScreen.dart';
import 'package:nurburgring_app/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // It is not mandatory to use named routes, but dynamic urls are interesting.
      initialRoute: '/splash',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      defaultTransition: Transition.native,
      theme: ThemeData(fontFamily: 'Karla'),
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(
          name: '/auth',
          page: () => AuthScreen(),
        ),
        // GetPage with default transitions
      ],
    );
  }
}
/*
class MyHomePage extends StatefulWidget {
  MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;
    return Scaffold(
        body:
            Container() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}*/
