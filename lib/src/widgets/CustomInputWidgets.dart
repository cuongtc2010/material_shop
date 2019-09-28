import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomUIWidget {
  static inputBorderRadius(
      {hintText = "",
      Color color,
      TextEditingController controller,
      TextInputType keyboardType = TextInputType.text,
      Icon icon,
      obscureText = false,
      double radius = 40.0,
      FormFieldSetter<String> onSaved}) {
    return Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        decoration: BoxDecoration(
            color: (color != null ? color : null),
            borderRadius: BorderRadius.all(Radius.circular(radius))),
        child: TextFormField(
          obscureText: obscureText,
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              icon: icon, hintText: hintText, border: InputBorder.none),
          validator: (value) {
            if (value.isEmpty) {
              return hintText + " không được bỏ trống";
            }
          },
          onSaved: onSaved,
        ));
  }

  static inputDefaultValidator(
      {hintText = "",
      Color color,
      Icon icon,
      obscureText = false,
      TextInputType keyboardType,
      String initialValue,
      TextEditingController controller,
      TextInputAction textInputAction,
      FormFieldSetter<String> onSaved}) {
    return TextFormField(
        initialValue: initialValue,
        textInputAction: textInputAction,
        controller: controller,
        decoration: InputDecoration(
          labelText: hintText,
        ),
        validator: (value) {
          if (value.isEmpty) {
            return hintText + " không được bỏ trống";
          }
        },
        keyboardType: keyboardType,
        onSaved: onSaved);
  }

  static inputDefault(
      {hintText = "",
      Color color,
      Icon icon,
      obscureText = false,
      bool enabled = true,
      TextInputType keyboardType,
      String initialValue,
      TextInputAction textInputAction,
      TextEditingController controller,
      FormFieldSetter<String> onSaved}) {
    return TextFormField(
        initialValue: initialValue,
        controller: controller,
        enabled: enabled,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          labelText: hintText,
        ),
        keyboardType: keyboardType,
        onSaved: onSaved);
  }

  static inputBoder(
      {hintText = "",
      Color color,
      Icon icon,
      obscureText = false,
      bool enabled = true,
      TextInputType keyboardType,
      String initialValue,
      TextInputAction textInputAction,
      TextEditingController controller,
      FormFieldSetter<String> onSaved}) {
    return TextFormField(
        initialValue: initialValue,
        controller: controller,
        enabled: enabled,
        textInputAction: textInputAction,
        decoration: InputDecoration(
            labelText: hintText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)))),
        keyboardType: keyboardType,
        onSaved: onSaved);
  }

  static buttonExpanded({
    Color color = Colors.blue,
    hintText = "",
    @required VoidCallback onPressed,
  }) {
    return Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Container(
                    child: FlatButton(
                        color: color,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: onPressed,
                        child: Text(hintText,
                            style: TextStyle(color: Colors.white)))))
          ],
        ));
  }

  static buttonBorderRadius({
    Color color = Colors.red,
    double radius = 40.0,
    hintText = "",
    @required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
          color: (color),
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      child: FlatButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: onPressed,
          child: Text(hintText, style: TextStyle(color: Colors.white))),
    );
  }

  static inputWithBorder(
      {hintText = "",
        errorText = "",
        ValueChanged<String> onChanged,
        Color color,
        TextEditingController controller,
        TextInputType keyboardType = TextInputType.text,
        Icon icon,
        obscureText = false,
        double radius = 40.0,
        FormFieldSetter<String> onSaved}) {
    return Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        decoration: BoxDecoration(
            color: (color != null ? color : null),
            borderRadius: BorderRadius.all(Radius.circular(radius))),
        child: TextField(
          obscureText: obscureText,
          controller: controller,
          keyboardType: keyboardType,
          onChanged: onChanged,
          decoration: InputDecoration(
              icon: icon,
              hintText: hintText,
              errorText: errorText,
              border: InputBorder.none
          ))
    );
  }
}
