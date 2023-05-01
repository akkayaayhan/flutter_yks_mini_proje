import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:project1_yks_tercih/model/universite.dart';

class UniversiteDetay extends StatefulWidget {
  final Universite secilenUniversite;
  const UniversiteDetay({required this.secilenUniversite, Key? key})
      : super(key: key);

  @override
  _UniversiteDetayState createState() => _UniversiteDetayState();
}

class _UniversiteDetayState extends State<UniversiteDetay> {
  @override
  void initState() {
    super.initState();
    print('init state çalıstı');
  }

  @override
  Widget build(BuildContext context) {
    print('build çalıstı');
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.purple,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenUniversite.universiteAdi +
                  " Universite ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                'images/' + widget.secilenUniversite.universiteBuyukResim,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.secilenUniversite.universiteDetayi,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
      ),
    );
  }
}
