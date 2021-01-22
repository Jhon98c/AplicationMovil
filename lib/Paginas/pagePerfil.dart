import 'package:flutter/material.dart';

class pagePerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        elevation: 40.0,
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text1(),
        ],
      ),
    );
  }
}

Widget Text1() {
  return Text(
    'Perfil',
    style: TextStyle(fontSize: 22.0),
  );
}
