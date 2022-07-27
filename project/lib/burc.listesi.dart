import 'package:flutter/material.dart';
import 'package:project1/burc_item.dart';
import 'package:project1/data/strings.dart';
import 'model/burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar; //bu kullanılmadan initilaize edilecek
  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Burçlar Listesi')),
      body: ListView.builder(
        itemCount: tumBurclar.length,
        itemBuilder: (BuildContext context, int index) {
          return BurcItem(
            listelenenBurc: tumBurclar[index],
          );
        },
      ),
    );
  }
}

List<Burc> veriKaynaginiHazirla() {
  List<Burc> gecici = [];
  for (int i = 0; i < 12; i++) {
    Burc eklenecekBurc = Burc(
        Strings.BURC_ADLARI[i],
        Strings.BURC_TARIHLERI[i],
        Strings.BURC_GENEL_OZELLIKLERI[i],
        Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png',
        Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png');
    gecici.add(eklenecekBurc);
  }
  return gecici;
}
