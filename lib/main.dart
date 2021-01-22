import 'package:flutter/material.dart';
import 'package:flutter_app/Paginas/AppBarInferior.dart';
import 'package:flutter_app/Paginas/inicio.dart';
import 'package:flutter_app/Paginas/pageEmpleos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: AppBarInferior());
  }
}
