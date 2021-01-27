import 'package:flutter/material.dart';
import 'package:flutter_app/Paginas/pageFormulario.dart';

class pagePublicar extends StatelessWidget {
  var child;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Pubicar'),
          elevation: 40.0,
        ),
        body: ListView(
          children: <Widget>[
            Text1(),
            btn1(),
            btn2(),
            btn3(),
            btn4(),
            btn5(),
            btn6(),
          ],
        ));
  }
}

Widget Text1() {
  return Text(
    'Seleccione la categoria de su proyecto',
    style: TextStyle(fontSize: 18.0),
  );
}

class btn1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Card(
      color: Colors.red,
      child: InkWell(
        splashColor: Colors.white,
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => pageForm()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Center(
            child: Text(
              'Sitio web y TI',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
          ),
        ),
      ),
    ));
  }
}

class btn2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Card(
        color: Colors.blue,
        child: InkWell(
          splashColor: Colors.white,
          onTap: () {
            print('Desarrollo Movil.');
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Center(
              child: Text(
                'Desarrollo Movil',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class btn3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Card(
        color: Colors.orange,
        child: InkWell(
          splashColor: Colors.white,
          onTap: () {
            print('Redacción.');
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Center(
              child: Text(
                'Redacción',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class btn4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Card(
        color: Colors.purple,
        child: InkWell(
          splashColor: Colors.white,
          onTap: () {
            print('Arte y Diseño.');
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Center(
              child: Text(
                'Arte y Diseño',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class btn5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Card(
        color: Colors.black,
        child: InkWell(
          splashColor: Colors.white,
          onTap: () {
            print('Ingreso de datos.');
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Center(
              child: Text(
                'Ingreso de datos',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class btn6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Card(
        color: Colors.green,
        child: InkWell(
          splashColor: Colors.white,
          onTap: () {
            print('Otros.');
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Center(
              child: Text(
                'Otros',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
