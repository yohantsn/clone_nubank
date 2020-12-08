import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget designSystem({Widget child}){
  return Scaffold(
    backgroundColor: Color(0xFF8A05BE),
    body: SafeArea(
      child: child,
    ),
  );
}