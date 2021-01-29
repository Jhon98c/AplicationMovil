import 'package:flutter/material.dart';

class pageMensaje extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Mensaje', textAlign: TextAlign.center),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text1(),
          mensaje(),
        ],
      ),
    );
  }
}

Widget Text1() {
  return Text(
    'Mensajes',
    style: TextStyle(fontSize: 22.0),
  );
}

Widget mensaje() {
  return Center(
    child: Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 4,
        ),
      ),
      child: Center(
        child: Text(
          'No tiene Mensajes',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    ),
  );
}
