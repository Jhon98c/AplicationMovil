import 'package:flutter/material.dart';
import 'package:flutter_app/Paginas/pageBuscar.dart';

class pageEmpleos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Empleos'),
          elevation: 40.0,
        ),
        body: new Column(
          children: <Widget>[
            Text1(),
            BtnSuperiores(),
            SizedBox(height: 300.0),
            btnBuscar()
          ],
        ));
  }
}

Widget Text1() {
  return Text(
    'Empleos',
    style: TextStyle(fontSize: 28.0),
  );
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

Widget btnBuscar2() {
  return Container(
    child: RaisedButton(
      color: Colors.red,
      textColor: Colors.white,
      child: Text(
        "Buscar trabajos",
        style: TextStyle(
          fontSize: 15.0,
        ),
      ),
      onPressed: () {},
    ),
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
