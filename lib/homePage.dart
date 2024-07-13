import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nurburgring_app/constant.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: _h,
      width: _w,
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
                          image: AssetImage("assets/logoSplashScreenPNG.png"))),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(25)),
          Container(
              width: _w * 0.8,
              child: Text(
                'Mr TisseraK',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: _h * 0.03),
              )),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            'My Balance : 1 200 €',
            style: TextStyle(color: Colors.black, fontSize: _h * 0.025),
          ),
          Padding(padding: EdgeInsets.all(10)),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  backgroundColor: Colors.transparent,
                  child: Container(
                      height: _h * 0.5,
                      width: _w * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: _w * 0.5,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            height: _h * 0.075,
                            decoration: BoxDecoration(
                                border: Border.all(color: redFromN, width: 2),
                                borderRadius: BorderRadius.circular(15)),
                            alignment: Alignment.center,
                            child: TextField(
                              style: TextStyle(fontWeight: FontWeight.bold),
                              keyboardType: TextInputType.numberWithOptions(
                                  decimal: false),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "0",
                                  hintStyle: TextStyle(
                                      color: redFromN,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(25)),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                  color: redFromN,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                'Add Balance',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: _h * 0.025),
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              );
            },
            child: Container(
              width: _w * 0.8,
              height: _h * 0.075,
              decoration: BoxDecoration(
                  color: redFromN, borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              child: Text(
                'Add Balance',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: _h * 0.025),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          GestureDetector(
            onTap: () {
              Get.dialog(
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: _h * 0.5,
                        width: _w * 0.8,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.white),
                        child: QrImageView(
                          data: '1234567890',
                          version: QrVersions.auto,
                          size: _w * 0.8,
                        ),
                      )
                    ],
                  ),
                  useSafeArea: true);
            },
            child: Container(
              width: _w * 0.8,
              height: _h * 0.075,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              child: Text(
                'Show QrCode',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: _h * 0.025),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
