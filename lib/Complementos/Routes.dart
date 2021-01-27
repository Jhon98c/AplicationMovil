import 'package:flutter/material.dart';
import 'package:flutter_app/Paginas/pageView.dart';

class routesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        "/pageView": (BuildContext context) => pageView(),
      },
    );
  }
}
