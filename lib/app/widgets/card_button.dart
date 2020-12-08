import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CardButton({Icon icon, Color color, String text}){
  return Container(
    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
    height: 90,
    width: 100,
    child: Card(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: icon,
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
            child: Text("$text", style: TextStyle(color: Colors.white, fontSize: 14),),
          )
        ],
      ),
    ),
  );
}