import 'package:flutter/material.dart';

class pageBuscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscar'),
        elevation: 40.0,
      ),
      body: new Column(
        children: <Widget>[
          Text1(),
          Buscar(),
          catBuscar(),
        ],
      ),
    );
  }
}

Widget Text1() {
  return Text(
    'Buscar',
    style: TextStyle(fontSize: 28.0),
  );
}

Widget Buscar() {
  return Container(
    width: 400,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const SizedBox(
          height: 15,
        ),
        ClipRRect(
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
      ],
    ),
  );
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
