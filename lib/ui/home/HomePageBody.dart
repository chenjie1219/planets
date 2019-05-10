import 'package:flutter/material.dart';
import 'package:planets/model/planets.dart';
import 'package:planets/ui/home/PlanetRow.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Color(0xff736ab7),
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            sliver: SliverFixedExtentList(
              itemExtent: 154.0,
              delegate: SliverChildBuilderDelegate(
                  (ctx, i) => PlanetRow(planet: planets[i]),
                  childCount: planets.length),
            ),
          )
        ],
      ),
    ));
  }
}
