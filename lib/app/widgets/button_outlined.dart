import 'package:flutter/material.dart';

Widget buttonOut({Color color, String text, Function onPressed}){
  return OutlineButton(
      borderSide: BorderSide(
          color: color, width: 1.5),
      child: Text(
        "${text.toUpperCase()}",
        style: TextStyle(color: color),
      ),
      onPressed: onPressed);
}