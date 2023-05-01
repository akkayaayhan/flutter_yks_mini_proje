import 'package:flutter/material.dart';
import 'package:project1_yks_tercih/universite_listesi.dart';

import 'anasayfa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Anasayfa(),
    );
  }
}
