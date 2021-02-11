import 'package:flutter/material.dart';
import 'package:flutter_app/Paginas_complementarias/complementPageBuscar/pageResultadoBusqueda.dart';

class pageEmpleos extends StatefulWidget {
  @override
  _pageEmpleosState createState() => _pageEmpleosState();
}

class _pageEmpleosState extends State<pageEmpleos> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(
            child: Text('Empleos', textAlign: TextAlign.center),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
          ),
          bottom: TabBar(
              labelColor: Colors.blue[900],
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.white),
              tabs: [
                Tab(
                  child: Align(
                    //alignment: Alignment.center,
                    child: Text("Todos"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Guardados"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Favoritos"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("En Proceso"),
                  ),
                ),
              ]),
        ),
        body: TabBarView(children: <Widget>[
          todosEmpleos(),
          guardadosEmpleos(),
          favoritosEmpleos(),
          procesoEmpleos(),
        ]),
      ),
    );
  }
}

class todosEmpleos extends StatelessWidget {
  const todosEmpleos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15.0),
          Text(
            'Todos los Empleos recomendados',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
          ),
          SizedBox(
            height: 15.0,
          ),
          cajaResultados(),
        ],
      ),
    );
  }
}

class guardadosEmpleos extends StatelessWidget {
  const guardadosEmpleos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15.0),
          Text(
            'Empleos/proyectos guardados',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
          ),
          SizedBox(
            height: 15.0,
          ),
          cajaResultados(),
        ],
      ),
    );
  }
}

class favoritosEmpleos extends StatelessWidget {
  const favoritosEmpleos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15.0),
          Text(
            'Empleos/proyectos Favoritos',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
          ),
          SizedBox(
            height: 15.0,
          ),
          cajaResultados(),
        ],
      ),
    );
  }
}

class procesoEmpleos extends StatelessWidget {
  const procesoEmpleos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15.0),
          Text(
            'Proyectos/empleos en proceso',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
          ),
          SizedBox(
            height: 15.0,
          ),
          cajaResultados(),
        ],
      ),
    );
  }
}
