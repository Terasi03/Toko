import 'package:flutter/material.dart';
import 'home_page.dart';

class ResultPage extends StatelessWidget {
  final String nama;
  final String jumlah;

  const ResultPage({
    super.key,
    required this.nama,
    required this.jumlah,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: const Text("Pesanan Berhasil"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.brown,
        elevation: 0,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(25),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),

              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 10,
                )
              ],
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 100,
                ),

                const SizedBox(height: 15),

                const Text(
                  "Pesanan Berhasil!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Coffee Amanda ☕",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25),

                Text(
                  "Menu : $nama",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "Jumlah : $jumlah",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Terima kasih telah memesan di Coffee Amanda.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 25),

               SizedBox(
  width: double.infinity,
  height: 50,
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    onPressed: () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
        (route) => false,
      );
    },
    child: const Text(
      "Kembali ke Home",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ),
),
              ],
            ),
          ),
        ),
      ),
    );
  }
}