import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nurburgring_app/constant.dart';
import 'package:nurburgring_app/homePage.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({
    super.key,
  });

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
            color: greyFromN,
            height: _h,
            width: _w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: _h * 0.25,
                    width: _w,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: _h * 0.25,
                          width: _w,
                          child: Column(
                            children: [
                              Container(
                                width: _w,
                                height: _h * 0.125,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: _h * 0.15,
                          width: _w * 0.8,
                          decoration: BoxDecoration(
                              color: redFromN,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/logoSplashScreenPNG.png"))),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: _w * 0.9,
                    child: Text(
                      'Welcome !',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: _h * 0.05),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    width: _w * 0.9,
                    child: Text(
                      'Sign In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: _h * 0.03),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    height: _h * 0.075,
                    width: _w * 0.8,
                    padding: EdgeInsets.all(_w * 0.025),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Email'),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    height: _h * 0.075,
                    width: _w * 0.8,
                    padding: EdgeInsets.all(_w * 0.025),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Password'),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(25)),
                  GestureDetector(
                    onTap: () {
                      Get.to(HomePage(), transition: Transition.fadeIn);
                    },
                    child: Container(
                      height: _h * 0.075,
                      width: _w * 0.8,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: redFromN,
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: _h * 0.02),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(25)),
                  GestureDetector(
                    onTap: () async {
                      Get.bottomSheet(Container(
                        height: _h * 0.5,
                        width: _w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Text(
                              'Password forget ?',
                              style: textBlackPetitWeight(_h * 0.025),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            GestureDetector(
                              onTap: () {},
                              child: AnimatedOpacity(
                                opacity: 1,
                                duration: Duration(seconds: 1),
                                child: Container(
                                  width: _w * 0.8,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: _w * 0.8,
                                        child: Text(
                                          "Email",
                                          style: textGreyPetit(_h * 0.02),
                                        ),
                                      ),
                                      Container(
                                        width: _w * 0.8,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey
                                                        .withOpacity(0.25),
                                                    width: 2))),
                                        child: TextFormField(
                                            onChanged: (eee) {},
                                            decoration: InputDecoration(
                                                border: InputBorder.none)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                            GestureDetector(
                              onTap: () async {
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (context) => Dialog(
                                    child: Container(
                                      width: _w * 0.8,
                                      height: _w * 0.8,
                                      padding: EdgeInsets.all(_w * 0.025),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                        child: Text(
                                          'Check your email to reset your password',
                                          textAlign: TextAlign.center,
                                          style:
                                              textBlackPetitWeight(_h * 0.025),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                                Future.delayed(Duration(seconds: 3), () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                });
                              },
                              child: Container(
                                width: _w * 0.8,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: redFromN,
                                    borderRadius: BorderRadius.circular(30)),
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "Send",
                                  style: textBlancPetitWeight(_h * 0.025),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(15)),
                          ],
                        ),
                      ));
                    },
                    child: Text('Reset your password'),
                  ),
                ],
              ),
            )) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
