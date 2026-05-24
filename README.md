# HealthHub - Aplikasi Janji Temu Dokter

HealthHub adalah aplikasi Flutter sederhana yang menampilkan daftar kategori dokter, detail dokter, jadwal praktik, biografi singkat, rating, serta fitur konfirmasi janji temu. Aplikasi ini dibuat sebagai latihan dasar dalam membangun antarmuka Flutter dengan navigasi antarhalaman dan penggunaan asset gambar.

## 1. Tujuan Pembuatan Aplikasi

Aplikasi ini dibuat untuk memahami beberapa konsep dasar Flutter, yaitu:

- Membuat project Flutter baru.
- Menyusun struktur folder aplikasi.
- Menggunakan widget dasar seperti `Scaffold`, `Column`, `Row`, `Container`, `Text`, `Image`, dan `ElevatedButton`.
- Membuat halaman utama dan halaman detail.
- Menggunakan navigasi dengan `Navigator.push`.
- Menampilkan gambar dari folder `assets`.
- Membuat dialog konfirmasi menggunakan `AlertDialog`.
- Memisahkan kode ke dalam beberapa file agar struktur aplikasi lebih rapi.

---

## 2. Membuat Project Flutter

Langkah pertama adalah membuat project Flutter baru melalui terminal.

```bash
flutter create belajar1
```

Setelah project berhasil dibuat, masuk ke folder project:

```bash
cd belajar1
```

Kemudian buka project di Visual Studio Code:

```bash
code .
```

Pastikan folder yang dibuka di VS Code adalah folder `belajar1`, bukan folder induknya. Folder `belajar1` harus berisi file `pubspec.yaml`.

---

## 3. Struktur Folder Aplikasi

Setelah project dibuat, struktur folder di dalam `lib` disusun agar kode lebih mudah dikelola.

Struktur folder yang digunakan adalah sebagai berikut:

```text
lib/
├── main.dart
├── models/
│   └── doctor_model.dart
├── pages/
│   ├── home_page.dart
│   └── doctor_detail_page.dart
└── widgets/
    ├── category_button.dart
    └── doctor_card.dart
```

Selain itu, dibuat juga folder untuk menyimpan gambar:

```text
assets/
└── images/
    ├── doctor.png
    └── doctor_banner.jpg
```

---

## 4. Menyiapkan Asset Gambar

Aplikasi ini menggunakan dua gambar utama, yaitu:

| Nama File | Fungsi | Ukuran Disarankan |
|---|---|---|
| `doctor_banner.jpg` | Banner pada halaman utama | 1200 x 600 px |
| `doctor.png` | Gambar dokter pada halaman detail | 512 x 512 px |

File gambar diletakkan di dalam folder:

```text
assets/images/
```

Contoh lokasi file:

```text
assets/images/doctor.png
assets/images/doctor_banner.jpg
```

---

## 5. Mendaftarkan Asset di `pubspec.yaml`

Agar gambar dapat digunakan di Flutter, folder asset harus didaftarkan pada file `pubspec.yaml`.

Tambahkan bagian berikut:

```yaml
flutter:
  uses-material-design: true

  assets:
    - assets/images/
```

Setelah itu jalankan perintah:

```bash
flutter pub get
```

Perintah ini digunakan agar Flutter membaca asset yang sudah didaftarkan.

---

## 6. Membuat Model Data Dokter

File pertama yang dibuat adalah:

```text
lib/models/doctor_model.dart
```

File ini digunakan untuk menyimpan struktur data dokter, seperti nama dokter, spesialis, jadwal praktik, biografi, rating, dan path gambar.

Model ini membantu agar data dokter lebih rapi dan mudah digunakan di beberapa halaman.

Contoh data yang digunakan pada aplikasi:

```dart
DoctorModel(
  name: 'dr. Ahmad Hidayat',
  specialist: 'Dokter Anak',
  schedule: 'Mon - Fri, 9.00 AM - 5.00 PM',
  biography: 'Dokter spesialis anak dengan pengalaman lebih dari 10 tahun di bidang klinis dan pelayanan kesehatan anak.',
  rating: 4.5,
  imagePath: 'assets/images/doctor.png',
);
```

---

## 7. Membuat Widget Tombol Kategori

File berikutnya adalah:

```text
lib/widgets/category_button.dart
```

Widget ini digunakan untuk membuat tombol kategori dokter pada halaman utama.

Kategori yang ditampilkan adalah:

- Dokter Umum
- Dokter Gigi
- Dokter Anak
- Dokter Hewan

Setiap tombol kategori memiliki ikon, teks, dan aksi ketika ditekan. Ketika pengguna memilih kategori, aplikasi akan diarahkan ke halaman detail dokter.

---

## 8. Membuat Widget Kartu Dokter

File berikutnya adalah:

```text
lib/widgets/doctor_card.dart
```

Widget ini digunakan untuk menampilkan ringkasan informasi dokter dalam bentuk kartu.

Informasi yang ditampilkan pada kartu dokter meliputi:

- Foto dokter
- Nama dokter
- Spesialis dokter
- Rating dokter
- Ikon navigasi ke halaman detail

Dengan membuat widget terpisah, tampilan kartu dokter dapat digunakan kembali jika nantinya aplikasi memiliki banyak data dokter.

---

## 9. Membuat Halaman Utama

Halaman utama dibuat pada file:

```text
lib/pages/home_page.dart
```

Halaman ini berfungsi sebagai tampilan awal aplikasi.

Komponen yang terdapat pada halaman utama adalah:

1. Banner aplikasi HealthHub.
2. Daftar kategori dokter.
3. Kartu rekomendasi dokter.
4. Navigasi menuju halaman detail dokter.

Pada halaman ini, pengguna dapat memilih kategori dokter atau menekan kartu dokter untuk melihat informasi lebih lengkap.

---

## 10. Membuat Halaman Detail Dokter

Halaman detail dokter dibuat pada file:

```text
lib/pages/doctor_detail_page.dart
```

Halaman ini menampilkan informasi dokter secara lebih lengkap.

Informasi yang ditampilkan adalah:

- Gambar dokter
- Nama dokter
- Spesialis dokter
- Jadwal praktik
- Biografi singkat
- Rating dokter
- Tombol `Buat Janji Temu`

Ketika tombol `Buat Janji Temu` ditekan, aplikasi akan menampilkan dialog konfirmasi.

---

## 11. Membuat Dialog Konfirmasi Janji Temu

Dialog konfirmasi dibuat menggunakan widget `AlertDialog`.

Dialog ini muncul ketika pengguna menekan tombol:

```text
Buat Janji Temu
```

Isi dialog menanyakan apakah pengguna ingin menjadwalkan konsultasi dengan dokter yang dipilih.

Pilihan yang tersedia adalah:

- `Tidak` untuk membatalkan.
- `Ya` untuk menyetujui janji temu.

Jika pengguna memilih `Ya`, aplikasi akan menampilkan pesan bahwa janji temu berhasil dibuat.

---

## 12. Mengatur File `main.dart`

File `main.dart` digunakan sebagai titik awal aplikasi.

Pada file ini, aplikasi menjalankan class utama `HealthHubApp` dan menampilkan `HomePage` sebagai halaman pertama.

Selain itu, pada file ini juga diatur beberapa konfigurasi dasar, seperti:

- Judul aplikasi.
- Menghilangkan tulisan debug banner.
- Mengatur tema warna aplikasi.
- Menentukan halaman awal.

---

## 13. Alur Kerja Aplikasi

Alur kerja aplikasi HealthHub adalah sebagai berikut:

```text
main.dart
   ↓
HealthHubApp
   ↓
HomePage
   ↓
Pengguna memilih kategori dokter atau kartu dokter
   ↓
DoctorDetailPage
   ↓
Pengguna melihat detail dokter
   ↓
Pengguna menekan tombol Buat Janji Temu
   ↓
Muncul dialog konfirmasi
   ↓
Pengguna memilih Ya atau Tidak
```

Dengan alur tersebut, aplikasi memiliki proses yang sederhana dan mudah dipahami.

---

## 14. Menjalankan Aplikasi

Setelah semua file dibuat, jalankan perintah berikut:

```bash
flutter pub get
flutter run
```

Jika menggunakan emulator Android, pastikan emulator sudah aktif sebelum menjalankan aplikasi.

---

## 15. Kendala yang Mungkin Terjadi

### Asset Gambar Tidak Terbaca

Jika muncul error seperti:

```text
Unable to load asset
```

maka periksa kembali beberapa hal berikut:

1. Pastikan file gambar benar-benar ada di folder `assets/images/`.
2. Pastikan nama file di kode sama dengan nama file asli.
3. Pastikan asset sudah didaftarkan di `pubspec.yaml`.
4. Jalankan ulang perintah:

```bash
flutter clean
flutter pub get
flutter run
```

Contoh path yang benar:

```dart
AssetImage('assets/images/doctor_banner.jpg')
```

dan:

```dart
Image.asset('assets/images/doctor.png')
```

---

## 16. Kesimpulan

Aplikasi HealthHub dibuat dengan konsep sederhana untuk menampilkan layanan janji temu dokter. Pembuatan aplikasi dimulai dari membuat project Flutter, menyiapkan struktur folder, menambahkan asset gambar, membuat model data dokter, membuat widget pendukung, membuat halaman utama, membuat halaman detail dokter, hingga menampilkan dialog konfirmasi janji temu.

Melalui aplikasi ini, beberapa dasar Flutter dapat dipelajari, terutama penggunaan widget, navigasi halaman, pemisahan file, pengelolaan asset, dan pembuatan tampilan antarmuka sederhana.