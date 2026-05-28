import 'package:flutter/material.dart';

class KategoriPage extends StatelessWidget {
  const KategoriPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> kategori = [
      'Novel',
      'Fiksi Ilmiah',
      'Pendidikan',
      'Teknologi',
      'Sejarah',
      'Motivasi',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kategori Buku'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: kategori.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.menu_book),
              title: Text(kategori[index]),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            ),
          );
        },
      ),
    );
  }
}