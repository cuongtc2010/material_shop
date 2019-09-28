import 'package:flutter/material.dart';

class MediaUtils{
  static screenSizeWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
  static screenSizeHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
}