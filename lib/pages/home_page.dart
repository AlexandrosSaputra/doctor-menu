import 'package:flutter/material.dart';
import '../models/doctor_model.dart';
import '../widgets/category_button.dart';
import '../widgets/doctor_card.dart';
import 'doctor_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final DoctorModel doctor = const DoctorModel(
    name: 'dr. Ahmad Hidayat',
    specialist: 'Dokter Anak',
    schedule: 'Mon - Fri, 9.00 AM - 5.00 PM',
    biography:
        'Dokter spesialis anak dengan pengalaman lebih dari 10 tahun di bidang klinis dan pelayanan kesehatan anak.',
    rating: 4.5,
    imagePath: 'assets/images/doctor.png',
  );

  void _openDetail(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DoctorDetailPage(doctor: doctor),
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
                    image: AssetImage('assets/images/doctor_banner.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.75,
                  ),
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'HealthHub:\nYour Health Companion',
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
                icon: Icons.medical_services_outlined,
                title: 'Dokter Umum',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.health_and_safety_outlined,
                title: 'Dokter Gigi',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.child_care_outlined,
                title: 'Dokter Anak',
                onTap: () => _openDetail(context),
              ),
              CategoryButton(
                icon: Icons.pets_outlined,
                title: 'Dokter Hewan',
                onTap: () => _openDetail(context),
              ),

              const SizedBox(height: 20),

              const Text(
                'Rekomendasi Dokter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              DoctorCard(
                doctor: doctor,
                onTap: () => _openDetail(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}