# RuangBaca

RuangBaca adalah aplikasi Flutter sederhana bertema ruang baca digital. Aplikasi ini dibuat sebagai latihan dasar pengembangan antarmuka menggunakan Flutter, dengan fokus pada struktur halaman, penggunaan widget, navigasi antarmuka, serta pengelolaan data buku secara sederhana.

## Deskripsi Aplikasi

Aplikasi RuangBaca menampilkan daftar buku dalam tampilan yang rapi dan mudah digunakan. Pengguna dapat masuk melalui halaman awal, kemudian mengakses beberapa menu utama melalui bottom navigation bar. Menu yang tersedia meliputi Beranda, Kategori, dan Profil.

Aplikasi ini menggunakan konsep pemisahan file agar struktur program lebih mudah dipahami dan dikembangkan. Setiap bagian utama aplikasi dipisahkan ke dalam folder `models`, `pages`, dan `widgets`.

## Fitur Utama

1. Halaman awal atau welcome page dengan tombol Masuk.
2. Halaman Beranda untuk menampilkan daftar buku.
3. Halaman Kategori untuk menampilkan jenis atau kategori buku.
4. Halaman Profil untuk menampilkan informasi pengguna atau pembuat aplikasi.
5. Bottom navigation bar dengan tiga menu utama.
6. Penggunaan model data buku melalui file `buku_model.dart`.
7. Penggunaan widget terpisah seperti `buku_card.dart` dan `category_button.dart`.

## Struktur Folder

```text
lib/
├── models/
│   └── buku_model.dart
├── pages/
│   ├── welcome_page.dart
│   ├── home_page.dart
│   ├── bottom_nav_page.dart
│   ├── kategori_page.dart
│   ├── profil_page.dart
│   └── buku_detail_page.dart
├── widgets/
│   ├── buku_card.dart
│   └── category_button.dart
└── main.dart
```

## Penjelasan Struktur Program

### 1. `main.dart`

File `main.dart` berfungsi sebagai titik awal aplikasi. Di dalam file ini terdapat konfigurasi utama aplikasi seperti nama aplikasi, tema, warna dasar, dan halaman pertama yang ditampilkan.

Aplikasi pertama kali diarahkan ke `WelcomePage`, sehingga pengguna akan melihat halaman pembuka sebelum masuk ke halaman utama.

### 2. `welcome_page.dart`

File ini berisi halaman pembuka aplikasi. Pada halaman ini terdapat tampilan sambutan dan tombol Masuk. Ketika tombol Masuk ditekan, pengguna akan diarahkan ke halaman utama yang sudah memiliki bottom navigation bar.

### 3. `bottom_nav_page.dart`

File ini digunakan untuk mengatur navigasi bawah aplikasi. Bottom navigation bar memiliki tiga menu, yaitu:

* Beranda
* Kategori
* Profil

Setiap menu akan menampilkan halaman yang berbeda tanpa harus keluar dari aplikasi.

### 4. `home_page.dart`

File ini berisi halaman utama aplikasi. Halaman ini digunakan untuk menampilkan daftar buku atau konten utama dari aplikasi RuangBaca.

### 5. `kategori_page.dart`

File ini berisi halaman kategori buku. Halaman ini dapat digunakan untuk menampilkan daftar genre atau jenis buku, seperti novel, pendidikan, teknologi, sejarah, dan kategori lainnya.

### 6. `profil_page.dart`

File ini berisi halaman profil. Halaman ini dapat digunakan untuk menampilkan informasi pengguna, identitas pembuat aplikasi, atau deskripsi singkat mengenai aplikasi.

### 7. `buku_model.dart`

File ini digunakan untuk membuat struktur data buku. Data seperti judul buku, penulis, gambar, kategori, dan deskripsi dapat dikelola melalui model ini.

### 8. `buku_card.dart`

File ini berisi widget kartu buku. Widget ini digunakan untuk menampilkan informasi buku dalam bentuk tampilan kartu agar lebih rapi dan mudah digunakan kembali.

### 9. `category_button.dart`

File ini berisi widget tombol kategori. Widget ini digunakan untuk menampilkan pilihan kategori buku dengan bentuk yang lebih terstruktur.

## Alur Aplikasi

Alur kerja aplikasi RuangBaca adalah sebagai berikut:

```text
main.dart
   ↓
WelcomePage
   ↓
Tombol Masuk
   ↓
BottomNavPage
   ↓
Beranda / Kategori / Profil
```

Saat aplikasi dijalankan, sistem akan menampilkan halaman `WelcomePage`. Setelah pengguna menekan tombol Masuk, aplikasi akan berpindah ke `BottomNavPage`. Pada halaman tersebut, pengguna dapat memilih menu Beranda, Kategori, atau Profil melalui bottom navigation bar.

## Teknologi yang Digunakan

* Flutter
* Dart
* Material Design

## Cara Menjalankan Aplikasi

Pastikan Flutter sudah terpasang pada perangkat. Setelah itu, jalankan perintah berikut melalui terminal:

```bash
flutter pub get
flutter run
```

Jika menggunakan emulator atau perangkat tertentu, jalankan perintah:

```bash
flutter devices
flutter run -d nama_device
```

## Catatan Aset Gambar

Jika aplikasi menggunakan gambar lokal, pastikan file gambar sudah berada di folder aset, misalnya:

```text
assets/images/
```

Kemudian daftarkan aset tersebut pada file `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/images/
```

Setelah menambahkan aset, jalankan kembali:

```bash
flutter pub get
```

## Tujuan Pembuatan

Aplikasi ini dibuat sebagai latihan untuk memahami dasar-dasar Flutter, khususnya dalam membuat tampilan antarmuka, menyusun struktur folder, menggunakan widget, mengatur navigasi halaman, serta menampilkan data buku secara sederhana.

## Pengembang

Nama: Alexandros Saputra
NIM: 1462300235
Aplikasi: RuangBaca
