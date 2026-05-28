import 'package:flutter/material.dart';
import '../models/buku_model.dart';
import 'buku_detail_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bukuModel buku = bukuModel(
      name: 'Hujan',
      penulis: 'Tere Liye',
      deskripsi:
          'Hujan adalah novel karya Tere Liye yang menceritakan tentang persahabatan,' 
          'kehilangan, perjuangan, dan kenangan. Buku ini cocok dibaca oleh pembaca yang '
          'menyukai cerita emosional dengan latar masa depan.',
      biography:
          'Tere Liye adalah penulis Indonesia yang dikenal melalui berbagai karya novel '
          ' populer dengan tema kehidupan, keluarga, persahabatan, dan nilai kemanusiaan.',
      rating: 4.5,
      imagePath: 'assets/images/buku.png',
    );

    return bukuDetailPage(
      buku: buku,
    );
  }
}