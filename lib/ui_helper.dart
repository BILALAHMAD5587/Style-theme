import 'package:flutter/material.dart';

class MyColors{
  static const MaterialColor myColor = MaterialColor(
    0xff8f8509,
    <int, Color>{
      50: Color(0xFFF6F6EE),
      100: Color(0xFFF5F2D1),
      200: Color(0xFFEAD9AA),
      300: Color(0xFFE8D885),
      400: Color(0xFFF1BA3F),
      500: Color(0xff8f8509),
      600: Color(0xFF7E760D),
      700: Color(0xFF4F5905),
      800: Color(0xFF484212),
      900: Color(0xFF443700),
    },
  );

  static const MaterialColor myDarkColor = MaterialColor(
    0xDB4F3B3B,
    <int, Color>{
      50: Color(0xDBE1C9C9),
      100: Color(0xDBB49696),
      200: Color(0xDB8F6E6E),
      300: Color(0xDB966464),
      400: Color(0xDB775050),
      500: Color(0xDB4F3B3B),
      600: Color(0xDB312222),
      700: Color(0xDB362323),
      800: Color(0xDB281E1E),
      900: Color(0xDB100B0B),
    },
  );

 static final Color primaryColor = Color(0xFFF1BA3F);
 static final Color bgColor = Color(0xffef19ef);
}

TextStyle myHeadLine35({
  fColor = Colors.green,
  fweight = FontWeight.w500
}){
  return TextStyle(
    color: fColor,
    fontWeight:fweight,
    fontSize: 35,
  );
}

TextStyle myHeadLine21({
  fColor = Colors.red,
  fweight = FontWeight.w500
}){
  return TextStyle(
    color: fColor,
    fontWeight:fweight,
    fontSize: 21,
  );
}

TextStyle myHeadLine15({
  fColor = Colors.blue,
  fweight = FontWeight.w500
}){
  return TextStyle(
    color: fColor,
    fontWeight:fweight,
    fontSize: 15,
  );
}
