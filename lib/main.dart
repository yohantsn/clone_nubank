import 'package:flutter/material.dart';
import 'package:clone_nubank/app/app_module.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF8A05BE), // navigation bar color
  ));
  runApp(
      ModularApp(module: AppModule()));
}
