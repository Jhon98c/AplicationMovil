import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Paginas/pageEmpleos.dart';
import 'package:flutter_app/Paginas/pageBuscar.dart';
import 'package:flutter_app/Paginas/pageMensaje.dart';
import 'package:flutter_app/Paginas/pagePerfil.dart';
import 'package:flutter_app/Paginas/pagePublicar.dart';
import 'package:flutter_app/Paginas/pageMensaje.dart';

class bottomNavBar extends StatefulWidget {
  bottomNavBar({Key key, this.currIndex}) : super(key: key);
  final int currIndex;

  @override
  _bottomNavBarState createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  final List screens = [
    pageEmpleos(),
    pagePublicar(),
    pageBuscar(),
    pageMensaje(),
    //pageMensaje(),
    pagePerfil(),
  ];

  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
        }),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(
              Icons.work,
            ),
            title: Text(
              'Empleos',
            ),
            activeColor: Colors.blue[900],
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.add),
            title: Text('Publicar'),
            activeColor: Colors.blue[900],
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.search),
            title: Text('Buscar'),
            activeColor: Colors.blue[900],
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.sms),
            title: Text('Mensaje'),
            activeColor: Colors.blue[900],
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Perfil'),
            activeColor: Colors.blue[900],
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
