import 'package:flutter/material.dart';

class SizeConfig{
  static  MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

//có được chiều cao tương xứng theo kích thước màn hình
double getProPortionateScreenHeight(double inputHeight){
  double? screenHeight = SizeConfig.screenHeight;
  //812 là chiều cao bố cục mà nhà thiết kế sử dụng
  return (inputHeight / 812.0) * screenHeight!;
}
//có được chiều cao tương xứng theo kích thước màn hình
double getProPortionateScreenWight(double inputWight){
  double? screenWight = SizeConfig.screenWidth;
  //375 là bố cục mà nhà thiết kế sử dụng
  return (inputWight / 375.0) * screenWight!;
}