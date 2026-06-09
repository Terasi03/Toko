import 'package:flutter/material.dart';
import 'result_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int jumlah = 1;

  final String namaMenu = "Cappuccino";
  final int harga = 25000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: const Text("Detail Menu"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.brown,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // Gambar Menu
            Container(
              margin: const EdgeInsets.all(15),
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown.shade100,
              ),
              child: const Center(
                child: Text(
                  "☕",
                  style: TextStyle(fontSize: 120),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "Cappuccino",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "Kopi dengan perpaduan espresso dan susu foam yang lembut.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Text(
                    "Rp ${harga.toString()}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "Jumlah Pesanan",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [

                      IconButton(
                        onPressed: () {
                          if (jumlah > 1) {
                            setState(() {
                              jumlah--;
                            });
                          }
                        },
                        icon: const Icon(
                          Icons.remove_circle,
                          color: Colors.brown,
                          size: 30,
                        ),
                      ),

                      Text(
                        jumlah.toString(),
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      IconButton(
                        onPressed: () {
                          setState(() {
                            jumlah++;
                          });
                        },
                        icon: const Icon(
                          Icons.add_circle,
                          color: Colors.brown,
                          size: 30,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Total Harga",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Rp ${harga * jumlah}",
                          style: const TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
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
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(
            nama: namaMenu,
            jumlah: jumlah.toString(),
          ),
        ),
      );
    },
    child: const Text(
      "Pesan Sekarang",
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
          ],
        ),
      ),
    );
  }
}