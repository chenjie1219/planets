import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  GradientAppBar({this.title});

  final String title;
  final double barHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff3366ff), Color(0xff00ccff)])),
      child: NavigationToolbar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        middle: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 36.0),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
