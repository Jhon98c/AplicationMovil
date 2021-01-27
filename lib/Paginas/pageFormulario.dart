import 'package:flutter/material.dart';
import 'package:flutter_app/Paginas/pageView.dart';
import 'package:flutter_app/Complementos/Routes.dart';

class pageForm extends StatefulWidget {
  @override
  _pageFormState createState() => _pageFormState();
}

class _pageFormState extends State<pageForm> {
  TextEditingController nameProyectController;
  TextEditingController descripProyectController;
  TextEditingController ubiProyectController;
  TextEditingController habiliProyectController;
  TextEditingController remuProyectController;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Nombre del proyecto'),
            controller: nameProyectController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Descripcion del proyecto'),
            controller: descripProyectController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Ubicacion'),
            controller: ubiProyectController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Habilidades'),
            controller: habiliProyectController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'remuneracion3'),
            controller: remuProyectController,
          ),
          RaisedButton(
              child: Text("Mostrar Informacion"),
              onPressed: () {
                _showSecondPage(context);
              })
        ],
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.of(context).pushNamed("pageView",
        arguments: pageViewArguments(
            nameProyect: nameProyectController.text,
            descripProyect: descripProyectController.text,
            ubiProyect: ubiProyectController.text,
            habiliProyect: habiliProyectController.text,
            remuProyect: remuProyectController.text));
  }

  @override
  void initState() {
    super.initState();
    nameProyectController = TextEditingController();
    descripProyectController = TextEditingController();
    ubiProyectController = TextEditingController();
    habiliProyectController = TextEditingController();
    remuProyectController = TextEditingController();
  }

  void dispose() {
    super.dispose();

    nameProyectController.dispose();
    descripProyectController.dispose();
    ubiProyectController.dispose();
    habiliProyectController.dispose();
    remuProyectController.dispose();
  }
}
