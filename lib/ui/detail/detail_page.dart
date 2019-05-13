import 'package:flutter/material.dart';
import 'package:planets/model/planets.dart';
import 'package:planets/ui/common/planet_summary.dart';
import 'package:planets/ui/common/separator.dart';
import 'package:planets/ui/common/text_style.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;
  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      color: Color(0xff736ab7),
      child: Stack(
        children: <Widget>[
          _getBackground(),
          _getGradient(),
          _getContent(),
          _getToolbar(context)
        ],
      ),
    ));
  }

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

  Container _getContent() {
    final _overviewTitle = 'Overview'.toUpperCase();
    return Container(
      child: ListView(
        padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
        children: <Widget>[
          PlanetSummary.vertical(planet),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(_overviewTitle, style: Style.headerTextStyle),
                Separator(),
                Text(planet.description, style: Style.commonTextStyle)
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _getToolbar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: BackButton(color: Colors.white),
    );
  }
}
