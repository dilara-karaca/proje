import 'package:flutter/material.dart';

class TarifEkle extends StatefulWidget {
  @override
  State<TarifEkle> createState() => _TarifEkleState();
}

class _TarifEkleState extends State<TarifEkle> {
  TextEditingController tarifAdiController = TextEditingController();
  TextEditingController malzemelerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text(
            "Tarif Ekle",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: tarifAdiController,
                  decoration: InputDecoration(labelText: "Tarif Adı"),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: malzemelerController,
                  decoration: InputDecoration(labelText: "Malzemeler"),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  child: Text("Kaydet"),
                  onPressed: tarifKayit,
                )
              ],
            )));
  }

  void tarifKayit() {
    String tarifAdi = tarifAdiController.text;
    String malzemeler = malzemelerController.text;

    if (tarifAdi.isNotEmpty && malzemeler.isNotEmpty) {
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Lütfen tüm alanları doldurun!")),
      );
    }
  }
}
