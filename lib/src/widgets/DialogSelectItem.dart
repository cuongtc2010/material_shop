import 'package:flutter/material.dart';

class DialogSelectItem {
  static showDialogSelectUser({BuildContext context,@required VoidCallback onTap}){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Đăng nhập với tư các là'),
            content: Container(
              height: 300, // Change as per your requirement
              width: 200, // Change as per your requirement
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  InkWell(
                      child: ListTile(
                        title: Text("Khách hàng"),
                      ),
                      onTap: onTap
                  )
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Đóng'),
              )
            ],
          );
        }
    );
  }

  static showDialogSelectActionTheNap({BuildContext context, List<Widget> children}){
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              child: ListView(
                shrinkWrap: true,
                children: children,
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Đóng'),
              )
            ],
          );
        }
    );
  }
}