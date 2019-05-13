import 'package:flutter/material.dart';
import 'package:planets/model/planets.dart';
import 'package:planets/ui/common/planet_summary.dart';
import 'package:planets/ui/detail/detail_page.dart';

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
                  (ctx, i) => GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) =>
                                    DetailPage(planets[i]),
                                transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) =>
                                    new FadeTransition(
                                        opacity: animation, child: child))),
                        child: PlanetSummary(planets[i]),
                      ),
                  childCount: planets.length),
            ),
          )
        ],
      ),
    ));
  }
}
