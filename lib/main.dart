import 'package:film/Movie.dart';
import 'package:film/Movie.dart';

import 'package:flutter/material.dart';

import 'Movie.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    title: "Film",
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    theme: ThemeData(
      primarySwatch: Colors.indigo,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: Login(),
    routes: {
      'Movie': (ctx) =>movie(),
    },
  ));
}
