import 'package:flutter/material.dart';

class OeschinenLake extends StatelessWidget {
  const OeschinenLake({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oeschinen Lake Camping"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Gambar
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "oeschinenLake.png",
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 20),

                // Title + Rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Oeschinen Lake Campground",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Kandersteg, Switzerland",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.star, color: Colors.red),
                        SizedBox(width: 4),
                        Text("41"),
                      ],
                    )
                  ],
                ),

                const SizedBox(height: 30),

                // Tombol aksi
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    _ActionButton(icon: Icons.call, label: "CALL"),
                    _ActionButton(icon: Icons.near_me, label: "ROUTE"),
                    _ActionButton(icon: Icons.share, label: "SHARE"),
                  ],
                ),

                const SizedBox(height: 30),

                // Deskripsi
                const Text(
                  "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. "
                  "Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. "
                  "A gondola ride from Kandersteg, followed by a half-hour walk through pastures "
                  "and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. "
                  "Activities enjoyed here include rowing, and riding the summer toboggan run.",
                  style: TextStyle(fontSize: 16, height: 1.5),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.deepPurple),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(color: Colors.deepPurple)),
      ],
    );
  }
}
