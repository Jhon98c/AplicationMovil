import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/Complementos/AppBarInferior.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Cabecera(),
            Conten(),
            BotonStar(),
            Positioned(
                bottom: 0.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250.0,
                  color: Colors.black,
                  child: Image.asset('assets/images/bottom3.jpg',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height),
                ))
          ],
        ));
  }
}

class Cabecera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
            height: 80.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)),
            ),
            child: TextEgresado()),
      ],
    );
  }
}

class TextEgresado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Egresado.pe',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            )),
      ],
    );
  }
}

//cuerpo

Widget Conten() {
  return Container(
    width: 360.0,
    height: 400.0,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text1(),
        Text2(),
        Text3(),
      ],
    ),
  );
}

Widget Text1() {
  return Text(
    'Bienvenido a Egresado.pe',
    style: TextStyle(fontSize: 22.0),
  );
}

Widget Text2() {
  return Column(
    children: <Widget>[
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15),
        SvgPicture.asset('assets/iconsvg/sombrero-de-graduacion.svg',
            color: Colors.blue, width: 50, height: 50),
        SizedBox(width: 10),
        Text(
          'Egresado',
          style: TextStyle(fontSize: 22.0),
        ),
      ]),
      Text(
        'Encuentre el empleo de acuerdo a tus habilidades.',
        style: TextStyle(fontSize: 10.0),
      )
    ],
  );
}

Widget Text3() {
  return Column(
    children: <Widget>[
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15),
        SvgPicture.asset('assets/iconsvg/edificio.svg',
            color: Colors.blue, width: 50, height: 50),
        SizedBox(width: 10),
        Text(
          'Empleo',
          style: TextStyle(fontSize: 22.0),
        ),
      ]),
      Text(
        'Registra empleos o articulos y encuentra egresados con tus mismas habilidades.',
        style: TextStyle(fontSize: 10.0),
      )
    ],
  );
}

class BotonStar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  disabledColor: Colors.orange,
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Empezar"),
                  splashColor: Colors.green,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => AppBarInferior()));
                  })
            ]),
      ],
    );
  }
}
