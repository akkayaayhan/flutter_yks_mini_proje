import 'package:flutter/material.dart';
import 'package:project1_yks_tercih/model/universite.dart';
import 'package:project1_yks_tercih/universite_detay.dart';

class UniversiteItem extends StatelessWidget {
  final Universite listelenenUniversite;
  const UniversiteItem({required this.listelenenUniversite, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      UniversiteDetay(secilenUniversite: listelenenUniversite),
                ),
              );
            },
            leading: Image.asset(
              "images/" + listelenenUniversite.universiteKucukResim,
            ),
            title: Text(
              listelenenUniversite.universiteAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listelenenUniversite.universiteTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
