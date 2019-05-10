import 'package:flutter/material.dart';
import 'package:planets/ui/home/DetailPage.dart';
import 'package:planets/ui/home/HomePage.dart';

void main() {
  runApp(MaterialApp(
    title: "Planets",
    home: HomePage(),
    routes: {'/detail': (ctx) => DetailPage()},
  ));
}