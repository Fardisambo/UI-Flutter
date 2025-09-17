import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("farmLembang.png"),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                "Farm House Lembang",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 20),

            // Row untuk 3 ikon + text
            Container(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Column(
                  children: [
                    Icon(Icons.calendar_today_outlined),
                    SizedBox(height: 5),
                    Text("Open Everyday"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.access_time),
                    SizedBox(height: 5),
                    Text("09:00 - 20:00"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.attach_money),
                    SizedBox(height: 5),
                    Text("Rp. 25.000"),
                  ],
                ),
              ],
            ),
            ),

            const SizedBox(height: 20),
            
            Container(
            // Deskripsi
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Berada di jalur utama Bandung–Lembang, Farm House menjadi objek wisata "
                "yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, "
                "kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu "
                "diterapkan dalam bentuk spot swafoto Instagramable.",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
