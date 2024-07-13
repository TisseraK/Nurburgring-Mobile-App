import 'package:flutter/material.dart';

Color redFromN = Color.fromRGBO(230, 0, 1, 1);
Color whiteFromN = Color.fromRGBO(255, 255, 255, 1);
Color greyFromN = Color.fromRGBO(245, 245, 245, 1);

TextStyle textBlueWieght(double sizE) {
  return TextStyle(
      color: redFromN, fontWeight: FontWeight.bold, fontSize: sizE);
}

TextStyle textBlueNoWieght(double sizE) {
  return TextStyle(
      color: redFromN, fontWeight: FontWeight.normal, fontSize: sizE);
}

TextStyle textGreyPetit(double sizE) {
  return TextStyle(color: Colors.grey, fontSize: sizE);
}

TextStyle textBlancPetitWeight(double sizE) {
  return TextStyle(
      color: Colors.white, fontSize: sizE, fontWeight: FontWeight.bold);
}

TextStyle textBlackPetitWeight(double sizE) {
  return TextStyle(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize: sizE);
}
