import 'package:flutter/material.dart';
import 'package:project1_yks_tercih/model/universite.dart';
import 'package:project1_yks_tercih/universite_item.dart';

import 'data/strings.dart';

class UniversiteListesi extends StatelessWidget {
  late final List<Universite> tumUniversiteler;

  UniversiteListesi() {
    tumUniversiteler = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Universite Listesi'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return UniversiteItem(
                listelenenUniversite: tumUniversiteler[index]);
          },
          itemCount: tumUniversiteler.length,
        ),
      ),
    );
  }

  List<Universite> veriKaynaginiHazirla() {
    List<Universite> gecici = [];

    for (int i = 0; i < 4; i++) {
      var UniversiteAdi = Strings.UNIVERSITE_ADLARI[i];
      var UniversiteTarih = Strings.UNIVERSITE_TARIHLERI[i];
      var UniversiteDetay = Strings.UNIVERSITE_GENEL_OZELLIKLERI[i];
      //koc1.png değerini olusturmak  Koc --> koc --> koc1.png
      var UniversiteKucukResim =
          Strings.UNIVERSITE_ADLARI[i].toLowerCase() + '${i + 1}.png';
      //koc_buyuk1.png
      var UniversiteBuyukResim = Strings.UNIVERSITE_ADLARI[i].toLowerCase() +
          '_buyuk' +
          '${i + 1}.png';
      Universite eklenecekUniversite = Universite(
          UniversiteAdi,
          UniversiteTarih,
          UniversiteDetay,
          UniversiteKucukResim,
          UniversiteBuyukResim);
      gecici.add(eklenecekUniversite);
    }
    return gecici;
  }
}
