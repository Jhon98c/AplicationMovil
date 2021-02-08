import 'package:flutter/material.dart';
import 'package:flutter_app/Complementos/Routes.dart';
import 'package:flutter_app/Paginas_complementarias/pageViewForm.dart';

class pageFormulario extends StatefulWidget {
  @override
  _pageFormState createState() => _pageFormState();
}

class _pageFormState extends State<pageFormulario> {
  String nombreProyect;
  String descripcionProyect;
  String ubicacionProyect;
  String habilidadesProyect;
  String remuneracionProyect;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:
              Text('Publicar un proyecto/empleo', textAlign: TextAlign.center),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 380.0,
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nombre del proyecto'),
                  onSaved: (value) {
                    nombreProyect = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                  },
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Descripcion del proyecto'),
                  onSaved: (value) {
                    descripcionProyect = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Ubicacion'),
                  onSaved: (value) {
                    ubicacionProyect = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Habilidades'),
                  onSaved: (value) {
                    habilidadesProyect = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'remuneracion'),
                  onSaved: (value) {
                    remuneracionProyect = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  child: Text("Guardar"),
                  onPressed: () {
                    _showSecondPage(context);
                    /*
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => pageViewFormu()));*/
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
    }

    Navigator.of(context).pushNamed("/pageView",
        arguments: pageViewFormuArguments(
          nombreProyect: this.nombreProyect,
          descripcionProyect: this.descripcionProyect,
          ubicacionProyect: this.ubicacionProyect,
          habilidadesProyect: this.habilidadesProyect,
          remuneracionProyect: this.remuneracionProyect,
        ));
  }
}
