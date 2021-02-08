import 'package:flutter/material.dart';
import 'package:flutter_app/Paginas_complementarias/pageFormulario.dart';

class pagePublicar extends StatefulWidget {
  @override
  _pagePublicarState createState() => _pagePublicarState();
}

class _pagePublicarState extends State<pagePublicar> {
  var child;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Publicar', textAlign: TextAlign.center),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Seleccione la categoria de su proyecto',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text('Publicar empleos'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => pageFormulario()));
                },
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    'No tiene empleos publicados',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
