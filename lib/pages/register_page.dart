import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'bottom_nav_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nbiController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController instagramController = TextEditingController();

  bool isLoading = false;

  @override
  void dispose() {
    namaController.dispose();
    nbiController.dispose();
    emailController.dispose();
    alamatController.dispose();
    instagramController.dispose();
    super.dispose();
  }

  Future<void> daftar() async {
    final String nama = namaController.text.trim();
    final String nbi = nbiController.text.trim();
    final String email = emailController.text.trim();
    final String alamat = alamatController.text.trim();
    final String instagram = instagramController.text.trim();

    if (nama.isEmpty ||
        nbi.isEmpty ||
        email.isEmpty ||
        alamat.isEmpty ||
        instagram.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Semua data wajib diisi'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    setState(() {
      isLoading = true;
    });

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('nama', nama);
    await prefs.setString('nbi', nbi);
    await prefs.setString('email', email);
    await prefs.setString('alamat', alamat);
    await prefs.setString('instagram', instagram);
    await prefs.setBool('sudah_daftar', true);

    if (!mounted) return;

    setState(() {
      isLoading = false;
    });

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const BottomNavPage(),
      ),
    );
  }

  Widget inputField({
    required String hintText,
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 390,
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Column(
                children: [
                  const SizedBox(height: 18),

                  Image.asset(
                    'assets/images/img1.png',
                    width: 145,
                    height: 145,
                    fit: BoxFit.contain,
                  ),

                  const Text(
                    'WELCOME',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 2),

                  const Text(
                    'Praktikum PAB 2026',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 28),

                  inputField(
                    hintText: 'Masukkan Nama',
                    controller: namaController,
                  ),

                  inputField(
                    hintText: 'Masukkan NBI',
                    controller: nbiController,
                    keyboardType: TextInputType.number,
                  ),

                  inputField(
                    hintText: 'Masukkan Email',
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),

                  inputField(
                    hintText: 'Masukkan Alamat',
                    controller: alamatController,
                  ),

                  inputField(
                    hintText: 'Masukkan Akun Instagram',
                    controller: instagramController,
                  ),

                  const SizedBox(height: 22),

                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: isLoading ? null : daftar,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF78A487),
                        foregroundColor: Colors.white,
                        disabledBackgroundColor: Colors.grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: isLoading
                          ? const SizedBox(
                              width: 22,
                              height: 22,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              'Daftar',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}