import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'universite_listesi.dart';

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UniversiteListesi()));
                },
                title: Text("Yazılım Mühendisliği (MTOK)"),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UniversiteListesi()));
                },
                title: Text("Yazılım Mühendisliği (MTOK)"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
