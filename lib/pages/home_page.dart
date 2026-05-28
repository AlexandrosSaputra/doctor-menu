import 'package:flutter/material.dart';
import '../models/buku_model.dart';
import '../widgets/category_button.dart';
import '../widgets/buku_card.dart';
import 'buku_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final bukuModel buku = const bukuModel(
    name: 'Hujan',
    penulis: 'Tere Liye',
    deskripsi: 'Novel fiksi ilmiah bertema penaklukan cinta,\n'
    'dan melibatkan bencana masa depan setelah bencana besar.',
    biography:
        'Klik pinjam buku.',
    rating: 4.5,
    imagePath: 'assets/images/buku.png',
  );

  void _openDetail(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => bukuDetailPage(buku: buku),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 135,
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/banner.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.75,
                  ),
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Ruang Baca Digital:\nPinjam dan Baca Buku secara gratis',
                    style: TextStyle(
                      fontSize: 23,
                      height: 1.3,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              CategoryButton(
                icon: Icons.auto_stories_outlined,
                title: 'Fiksi & Novel',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.computer_outlined,
                title: 'Teknologi & IT',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.science_outlined,
                title: 'Sains & Matematika',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.history_edu_outlined,
                title: 'Sejarah Dunia',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.business_center_outlined,
                title: 'Bisnis & Ekonomi',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.school_outlined,
                title: 'Pendidikan',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.health_and_safety_outlined,
                title: 'Kesehatan',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.menu_book_outlined,
                title: 'Agama & Spiritual',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.palette_outlined,
                title: 'Seni & Desain',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.psychology_alt_outlined,
                title: 'Biografi & Motivasi',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.public_outlined,
                title: 'Sosial & Budaya',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.gavel_outlined,
                title: 'Hukum & Politik',
                onTap: () => _openDetail(context),
              ),

              const SizedBox(height: 20),

              const Text(
                'Rekomendasi Buku',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              bukuCard(
                buku: buku,
                onTap: () => _openDetail(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}