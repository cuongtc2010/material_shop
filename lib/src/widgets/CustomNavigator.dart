import 'package:flutter/material.dart';

class CustomNavigator{
  static pushPageWithFadeTransition({BuildContext context, Widget screen}){
    return  Navigator.of(context).push(PageRouteBuilder(
        pageBuilder: (context, _, __) => screen,
        opaque: true,
        transitionDuration: Duration(milliseconds: 300),
        transitionsBuilder:
            (_, Animation<double> animation, __, Widget child) {
          return new FadeTransition(
            opacity: animation,
            child: new FadeTransition(
              opacity: animation,
              child: child,
            ),
          );
        }));
  }
}