import 'package:flutter/material.dart';

import 'navigations/tabbar.dart';

void main() {
  runApp(MaterialApp(
    title: "Spotify clone",
    theme: ThemeData.dark(), //temanın koyu tema olduğunu söyledim
    debugShowCheckedModeBanner: false, //debug yazısını kaldırdım
    home: Tabbar(),
  ));
}
