import 'dart:async';

import 'package:flutter/material.dart';

class DialogSelectAction {
  static showActionDialog({BuildContext context, List<Widget> widget }){
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            contentPadding: EdgeInsets.all(20.0),
            children: widget,
          );
        });
  }
  static Future<bool> showConfirmDialog({@required BuildContext context, @required String title}) async {
    return await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(title != null ? title : 'Bạn có muốn đăng xuất?'),
          contentPadding: EdgeInsets.all(10.0),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  textColor: Colors.orange,
                  child: Text('Hủy'),
                  onPressed: (){
                    Navigator.pop(context, false);
                  },
                ),
                SizedBox(width: 10.0),
                FlatButton(
                  textColor: Colors.orange,
                  child: Text('OK'),
                  onPressed: (){
                    Navigator.pop(context, true);
                  },
                )
              ],
            ),
          ],
        );
      },
    );
  }

  static Future<bool> errorLoginDialog(BuildContext context, [String message]) async {
    return await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lỗi'),
          content: Text(message != null ? message : 'Please try again!'),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text('Đóng'),
            )
          ],
        );
      },
    );
  }

  static Future<bool> notiDialog(BuildContext context, {String message, String notification}) async {
    return await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(notification),
          content: Text(message != null ? message : 'Please try again!'),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text('Đóng'),
            )
          ],
        );
      },
    );
  }
}