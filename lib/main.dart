import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ShoppingListScreen(),
    );
  }
}

// Halaman Pertama: Daftar Belanja
class ShoppingListScreen extends StatelessWidget {
  const ShoppingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Data dummy untuk daftar belanja
    final List<Map<String, dynamic>> items = [
      {'nama': 'Sugar', 'harga': 5000},
      {'nama': 'Salt', 'harga': 2000},
    ];

    return Scaffold(
      // AppBar di bagian atas dengan judul
      appBar: AppBar(
        title: const Text('Shopping List'),
        elevation: 0,
      ),
      // Body halaman berisi daftar item
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            // ListTile untuk setiap item dalam daftar
            child: ListTile(
              title: Text(item['nama']),
              trailing: Text(item['harga'].toString()),
              onTap: () {
                // Navigasi ke halaman detail saat item diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      nama: item['nama'],
                      harga: item['harga'],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// Halaman Kedua: Detail Item
class DetailScreen extends StatelessWidget {
  final String nama;
  final int harga;

  const DetailScreen({
    super.key,
    required this.nama,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan tombol 'back' otomatis
      appBar: AppBar(
        title: const Text('Shopping List'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Kembali ke halaman sebelumnya
            Navigator.pop(context);
          },
        ),
      ),
      // Body halaman untuk menampilkan detail item
      body: Center(
        child: Text(
          '$nama with $harga',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}