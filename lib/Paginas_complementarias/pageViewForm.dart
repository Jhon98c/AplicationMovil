import 'package:flutter/material.dart';

class pageViewFormu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    pageViewFormuArguments arguments =
        ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Publicar Empleo/proyecto', textAlign: TextAlign.center),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(arguments.nombreProyect),
            Text(arguments.descripcionProyect),
            Text(arguments.ubicacionProyect),
            Text(arguments.habilidadesProyect),
            Text(arguments.remuneracionProyect),
          ],
        ),
      ),
    );
  }
}

class pageViewFormuArguments {
  String nombreProyect;
  String descripcionProyect;
  String ubicacionProyect;
  String habilidadesProyect;
  String remuneracionProyect;
  pageViewFormuArguments({
    this.nombreProyect,
    this.descripcionProyect,
    this.ubicacionProyect,
    this.habilidadesProyect,
    this.remuneracionProyect,
  });
}
