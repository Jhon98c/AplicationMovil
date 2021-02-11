import 'package:flutter/material.dart';

class pagePerfil extends StatefulWidget {
  @override
  _pagePerfilState createState() => _pagePerfilState();
}

class _pagePerfilState extends State<pagePerfil> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.blue[900],
              title: Center(
                child: Column(
                  children: <Widget>[
                    Text('Perfil', textAlign: TextAlign.center),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              bottom: PreferredSize(
                child: Column(
                  children: <Widget>[
                    userProfile(),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
                preferredSize: Size.fromHeight(4.0),
              )),
        ),
      ),
    );
  }
}

class userProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 115.0,
            width: 115.0,
            child: Stack(
              fit: StackFit.expand,
              overflow: Overflow.visible,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/usuario.jpg'),
                ),
                Positioned(
                  right: -12.0,
                  bottom: 0.0,
                  child: SizedBox(
                    width: 46.0,
                    height: 46.0,
                    child: FlatButton(
                      onPressed: () {},
                      child: Icon(Icons.photo_camera),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
