import 'package:flutter/material.dart';

class pageBuscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Buscar', textAlign: TextAlign.center),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 15.0),
          Buscar(),
          SizedBox(height: 15.0),
          catBuscar(),
        ],
      ),
    );
  }
}

Widget Buscar() {
  return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 400,
        child: Align(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  filled: true,
                  hintText: 'Buscar empleo',
                  fillColor: Colors.grey[200],
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
            ),
          ),
        ),
      ));
}

class catBuscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Text2(),
        ],
      ),
    );
  }
}

Widget Text2() {
  return Text(
    'Buscar por categoria',
    style: TextStyle(fontSize: 20.0),
  );
}

Widget btnsPrimeros() {
  return Column(
    children: <Widget>[],
  );
}
