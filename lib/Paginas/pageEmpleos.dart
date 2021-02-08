import 'package:flutter/material.dart';
import 'package:flutter_app/Complementos/AppBarInferior.dart';
import 'package:flutter_app/Paginas/pageBuscar.dart';
import 'package:flutter_app/Paginas_complementarias/pageResultadoBusqueda.dart';

class pageEmpleos extends StatefulWidget {
  @override
  _pageEmpleosState createState() => _pageEmpleosState();
}

class _pageEmpleosState extends State<pageEmpleos> {
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
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 450.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 15.0),
              BtnSuperiores(),
              SizedBox(height: 10.0),
              cajaResultados()
            ],
          ),
        ),
      ), /*Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          BtnSuperiores(),
          SizedBox(height: 300.0),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 450.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[cajaResultados()],
              ),
            ),
          ),
        ],
      ),*/
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
/*
class btnBuscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: GestureDetector(
        onTap: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => AppBarInferior(
              currIndex: 3,
              //flag: true,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: [
              Text(
                "Inicio",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Nuestro GestureDetector envuelve nuestro botón
    return GestureDetector(
      // Cuando el hijo reciba un tap, muestra un snackbar
      onTap: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AppBarInferior(
            currIndex: 3,
            //flag: true,
          ),
        ),
      ),
      // Nuestro botón personalizado!
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text('My Button'),
      ),
    );
  }
}
*/
