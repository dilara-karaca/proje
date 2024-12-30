import 'package:flutter/material.dart';

List<Map<String, String>> tarifler = [
  {'tarifAdi': 'Pizza', 'malzemeler': 'Un, Pizza Sosu, Peynir, Salam'},
  {'tarifAdi': 'Kumpir', 'malzemeler': 'Patates, Kaşar, Mayonez'},
  {'tarifAdi': 'Körili Makarna', 'malzemeler': 'Makarna, köri, krema'},
];

class TarifListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text(
          "Tarif Listesi",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: tarifler.length,
          itemBuilder: (context, index) {
            if (index < tarifler.length) {
              return ListTile(
                title: Text(tarifler[index]['tarifAdi'] ?? ''),
                subtitle: Text(tarifler[index]['malzemeler'] ?? ''),
              );
            } else {
              return Text("Tarif Bulunamadı");
            }
          }),
    );
  }
}
