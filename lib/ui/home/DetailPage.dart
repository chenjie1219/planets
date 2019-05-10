import 'package:flutter/material.dart';
import 'package:planets/model/planets.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;
  DetailPage({this.planet});

  Container _getBackground() {
    return Container(
      child: Image.network(planet.picture, fit: BoxFit.cover, height: 300.0),
      constraints: BoxConstraints.expand(height: 300.0),
    );
  }

  Container _getGradient() {
    return Container(
      margin: EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0x00736ab7), Color(0xff736ab7)],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              stops: [0.0, 0.9])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Planet Detail'),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          color: Color(0xff736ab7),
          child: Stack(
            children: <Widget>[
              _getBackground(),
              _getGradient(),
              // _getContent(),
              // _getToolbar(context)
            ],
          ),
        ));
  }
}
