import 'package:flutter/material.dart';

class pageView extends StatelessWidget {
  const pageView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    pageViewArguments arguments = ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(arguments.nameProyect),
          Text(arguments.descripProyect),
          Text(arguments.ubiProyect),
          Text(arguments.habiliProyect),
          Text(arguments.remuProyect),
        ],
      ),
    );
  }
}

class pageViewArguments {
  String nameProyect;
  String descripProyect;
  String ubiProyect;
  String habiliProyect;
  String remuProyect;
  pageViewArguments(
      {this.nameProyect,
      this.descripProyect,
      this.ubiProyect,
      this.habiliProyect,
      this.remuProyect});
}
