import 'package:flutter/material.dart';
import 'package:flutter_app/Paginas_complementarias/complementPageBuscar/pageViewResulBusqueda.dart';

class pageResultadoBus extends StatefulWidget {
  String btnText;

  pageResultadoBus(this.btnText);

  @override
  _pageResultadoBusState createState() => _pageResultadoBusState();
}

class _pageResultadoBusState extends State<pageResultadoBus> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: SizedBox(
            child: Text(
              widget.btnText,
              textAlign: TextAlign.left,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 450.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[cajaResultados()],
          ),
        ),
      ),
    );
  }
}

class cajaResultados extends StatelessWidget {
  const cajaResultados({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          btnResultados(
            text: 'Web site development (premium subscription store)',
            text1: 'design web site development',
          ),
          btnResultados(
            text: 'Web site development (premium subscription store)',
            text1: 'Web site development ',
          ),
          btnResultados(
            text: 'Web site development (premium subscription store)',
            text1: 'Web site development ',
          ),
          btnResultados(
            text: 'Web site development (premium subscription store)',
            text1: 'Web site development ',
          ),
          btnResultados(
            text: 'Web site development (premium subscription store)',
            text1: 'Web site development ',
          ),
          btnResultados(
            text: 'Web site development (premium subscription store)',
            text1: 'Web site development ',
          ),
        ],
      ),
    );
  }
}

class btnResultados extends StatelessWidget {
  final String text;
  final String text1;
  const btnResultados({
    Key key,
    this.text,
    this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1.0),
      ),
      child: InkWell(
        splashColor: Colors.orange,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => pageViewResulBusqueda(text, text1)));
        },
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[400],
                width: 1,
              ),
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: 380.0,
                child: Text(
                  this.text,
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 380.0,
                height: 90.0,
                child: Text(
                  this.text1,
                  style: TextStyle(),
                  maxLines: 6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
