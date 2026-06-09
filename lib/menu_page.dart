import 'package:flutter/material.dart';
import 'order_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Coffee Amanda",
          style: TextStyle(
            color: Colors.brown,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.brown),
      ),

      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Cari menu favorit...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                menuCard(
                  context,
                  "Cappuccino",
                  "Kopi dengan foam susu lembut",
                  "Rp25.000",
                  "☕",
                ),

                menuCard(
                  context,
                  "Caramel Latte",
                  "Perpaduan espresso & caramel",
                  "Rp28.000",
                  "🥤",
                ),

                menuCard(
                  context,
                  "Matcha Latte",
                  "Matcha premium dengan susu segar",
                  "Rp30.000",
                  "🍵",
                ),

                menuCard(
                  context,
                  "Red Velvet Cake",
                  "Cake lembut dengan cream cheese",
                  "Rp22.000",
                  "🍰",
                ),

                menuCard(
                  context,
                  "Croissant Butter",
                  "Pastry renyah dan buttery",
                  "Rp18.000",
                  "🥐",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget menuCard(
    BuildContext context,
    String nama,
    String deskripsi,
    String harga,
    String emoji,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),

      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,

            decoration: BoxDecoration(
              color: Colors.orange.shade50,
              borderRadius: BorderRadius.circular(15),
            ),

            child: Center(
              child: Text(
                emoji,
                style: const TextStyle(fontSize: 40),
              ),
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  deskripsi,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  harga,
                  style: const TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OrderPage(),
      ),
    );
  },
  child: const Text(
    "Pesan",
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
),
        ],
      ),
    );
  }
}