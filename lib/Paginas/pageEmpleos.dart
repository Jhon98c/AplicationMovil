import 'package:flutter/material.dart';
import 'package:flutter_app/Paginas/pageBuscar.dart';

class pageEmpleos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Empleos', textAlign: TextAlign.center),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          BtnSuperiores(),
          SizedBox(height: 300.0),
          btnBuscar()
        ],
      ),
    );
  }
}

Widget BtnSuperiores() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      TextButton(
        child: const Text(
          'Todos',
          style: TextStyle(fontSize: 20.0),
        ),
        onPressed: () {/* ... */},
      ),
      TextButton(
        child: const Text(
          'Guardados',
          style: TextStyle(fontSize: 20.0),
        ),
        onPressed: () {/* ... */},
      ),
      TextButton(
        child: const Text(
          'Favoritos',
          style: TextStyle(fontSize: 20.0),
        ),
        onPressed: () {/* ... */},
      ),
      TextButton(
        child: const Text(
          'Proceso',
          style: TextStyle(fontSize: 20.0),
        ),
        onPressed: () {/* ... */},
      ),
    ],
  );
}

class btnBuscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
        disabledColor: Colors.orange,
        color: Colors.blue,
        textColor: Colors.white,
        child: Text("Buscar trabajo"),
        //splashColor: Colors.green,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => pageBuscar()));
        });
  }
}
