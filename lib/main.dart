import 'package:flutter/material.dart';
import 'package:tarifler/ana_sayfa.dart';
import 'package:tarifler/ikinci_sayfa.dart';
import 'package:tarifler/tarif_ekle_sayfas%C4%B1.dart';
import 'package:tarifler/tarif_listesi.dart';

void main() {
  runApp(AnaUygulama());
}

class AnaUygulama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnaSayfa(),
    );
  }
}
