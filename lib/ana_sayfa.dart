import 'package:flutter/material.dart';
import 'package:tarifler/ikinci_sayfa.dart';

class AnaSayfa extends StatelessWidget {
  TextEditingController isimController = TextEditingController();
  TextEditingController sifreController = TextEditingController();
  String userName = "admin";
  String password = "12345";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TARİF DEFTERİM",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
        ),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HOŞGELDİNİZ",
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: isimController,
                decoration: InputDecoration(
                  labelText: "Kullanıcı Adı",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: sifreController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Şifre",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  if (isimController.text == userName &&
                      sifreController.text == password) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => IkinciSayfa()),
                    );
                  } else {
                    print("Kullanıcı adı veya şifre hatalı");
                  }
                },
                child: Text(
                  "Giriş Yap",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
