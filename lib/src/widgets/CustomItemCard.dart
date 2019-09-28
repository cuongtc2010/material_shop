import 'package:flutter/material.dart';

class CustomItemCard{
  static itemPadding({@required String text, EdgeInsetsGeometry padding = const EdgeInsets.only(bottom: 8.0), TextStyle style}){
    return Padding(
        padding: padding,
        child: Text(text,style: style)
    );
  }
}