import 'package:flutter/material.dart';
import 'package:flutter_app/Paginas/pageEmpleos.dart';
import 'package:flutter_app/Paginas/pageBuscar.dart';
import 'package:flutter_app/Paginas/pageMensaje.dart';
import 'package:flutter_app/Paginas/pagePerfil.dart';
import 'package:flutter_app/Paginas/pagePublicar.dart';

class AppBarInferior extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomAppBar();
}

class _BottomAppBar extends State<AppBarInferior> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    pageEmpleos(),
    pagePublicar(),
    pageBuscar(),
    pageMensaje(),
    pagePerfil(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        elevation: 100.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.work), title: Text('Empleos')),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text('Publicar'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Buscar')),
          BottomNavigationBarItem(
              icon: Icon(Icons.sms), title: Text('Mensajes')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('Perfil'))
        ],
      ),
    );
  }
}

//Codigo de "bubble_bottom_bar"
/*import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter_app/Complementos/complementos.dart';
import 'package:flutter_app/Paginas/pageBuscar.dart';
import 'package:flutter_app/Paginas/pageMensaje.dart';
import 'package:flutter_app/Paginas/pagePerfil.dart';
import 'package:flutter_app/Paginas/pagePublicar.dart';
/*
void main() => runApp(MyApp());*/

class pageEmpleos extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bubble Bottom Bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Bubble Bottom Bar Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  int _pageIndex = 0;

  final pageEmpleos _listEmpleos = new pageEmpleos();
  final pagePublicar _listPublicar = new pagePublicar();
  final pageBuscar _listBuscar = new pageBuscar();
  final pageMensaje _listMensaje = new pageMensaje();
  final pagePerfil _listPerfil = new pagePerfil();

  Widget _showPage = new pageEmpleos();

  Widget _pageChooser(int page) { // solucion de error en proceso
    switch (page) {
      case 0:
        return _listEmpleos;
        break;
      case 1:
        return _listPublicar;
        break;
      case 2:
        return _listBuscar;
        break;
      case 3:
        return _listMensaje;
        break;
      case 4:
        return _listPerfil;
        break;
      default:
        return new Container(
          child: new Center(
              child: new Text('not found by page chooser.',
                  style: new TextStyle(fontSize: 30))),
        );
    }
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ),*/
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[appBarSuperior(), Text1(), BotonStar()],
      ),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BubbleBottomBar(
        opacity: .9,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.redAccent[400],
              icon: Icon(Icons.work, color: Colors.black),
              activeIcon: Icon(Icons.work, color: Colors.redAccent[400]),
              title: Text("Empleos",
                  style: TextStyle(color: Colors.redAccent[400]))),
          BubbleBottomBarItem(
              backgroundColor: Colors.redAccent[400],
              icon: Icon(Icons.add, color: Colors.black),
              activeIcon: Icon(Icons.add),
              title: Text("Publicar", style: TextStyle(color: Colors.white))),
          BubbleBottomBarItem(
              backgroundColor: Colors.redAccent[400],
              icon: Icon(Icons.search, color: Colors.black),
              activeIcon: Icon(Icons.search, color: Colors.white),
              title: Text("Buscar", style: TextStyle(color: Colors.white))),
          BubbleBottomBarItem(
              backgroundColor: Colors.redAccent[400],
              icon: Icon(Icons.sms, color: Colors.black),
              activeIcon: Icon(Icons.sms, color: Colors.white),
              title: Text("Mensaje", style: TextStyle(color: Colors.white))),
          BubbleBottomBarItem(
              backgroundColor: Colors.redAccent[400],
              icon: Icon(Icons.account_circle, color: Colors.black),
              activeIcon: Icon(Icons.account_circle, color: Colors.white),
              title: Text("Perfil", style: TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}

Widget Text1() {
  return Text(
    'Empleos',
    style: TextStyle(fontSize: 22.0),
  );
}

class BotonStar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          RaisedButton(
              disabledColor: Colors.orange,
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Publicar"),
              splashColor: Colors.green,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => pagePublicar()));
              })
        ]),
      ],
    );
  }
}
*/
