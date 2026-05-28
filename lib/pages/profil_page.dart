import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Lingkaran dekorasi bagian atas
          Positioned(
            top: -230,
            left: -120,
            right: -120,
            child: Container(
              height: 360,
              decoration: const BoxDecoration(
                color: Color(0xFFEAF1FF),
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Lingkaran dekorasi bagian bawah
          Positioned(
            bottom: -250,
            left: -120,
            right: -120,
            child: Container(
              height: 360,
              decoration: const BoxDecoration(
                color: Color(0xFFEAF1FF),
                shape: BoxShape.circle,
              ),
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 28),

                const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),

                const SizedBox(height: 35),

                // Avatar
                Container(
                  width: 78,
                  height: 78,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.12),
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/img1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 28),

                const ProfileInfoTile(
                  icon: Icons.person_outline,
                  text: 'Alexandros Saputra',
                ),
                const ProfileInfoTile(
                  icon: Icons.phone_in_talk_outlined,
                  text: '1462300235',
                ),
                const ProfileInfoTile(
                  icon: Icons.email_outlined,
                  text: 'alexandrossaputra@gmail.com',
                ),
                const ProfileInfoTile(
                  icon: Icons.location_on_outlined,
                  text: 'Surabaya',
                ),
                const ProfileInfoTile(
                  icon: Icons.camera_alt_outlined,
                  text: 'alexandrossaputra',
                ),

                const Spacer(),
              ],
            ),
          ),

          // Garis biru bawah
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 2,
              color: const Color(0xFF2196F3),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileInfoTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const ProfileInfoTile({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 22,
            color: const Color(0xFF5DA9FF),
          ),
          const SizedBox(width: 22),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}