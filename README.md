# flutter_application_1

A new Flutter project.

# tugas-praktikum-1

Langkah-Langkah Membuat Layout Flutter Sederhana
1. Buat Proyek Flutter Baru
Buka terminal/command prompt.
Jalankan perintah:
flutter create nama_proyek
Masuk ke folder proyek: cd nama_proyek
3. Buka Proyek di Visual Studio Code
Buka folder proyek dengan VS Code.
4. Edit File main.dart
Buka file main.dart.
Ganti seluruh isi file dengan kode layout yang sudah kamu buat (seperti pada lampiran di atas).
5. Siapkan Asset Gambar
Buat folder assets di dalam folder proyek.
Masukkan gambar (misal: jibu.jpg) ke dalam folder assets.
 Edit File pubspec.yaml
Tambahkan konfigurasi asset agar gambar bisa digunakan:
Pastikan tidak ada duplikasi key di file ini.
6. Jalankan Aplikasi
Pastikan emulator atau perangkat sudah terhubung.
Jalankan perintah di terminal:
Aplikasi akan tampil sesuai desain yang kamu buat.
Penjelasan Singkat Kode:

Menggunakan MaterialApp sebagai root aplikasi.
Layout utama menggunakan Scaffold dengan AppBar.
Isi body berupa gambar, judul, rating, tombol aksi, dan deskripsi.
Tombol dibuat dengan fungsi _buildButtonColumn.

erikut penjelasan sederhana tentang bagian main.dart untuk pemula yang baru belajar Flutter:

Penjelasan File main.dart untuk Pemula
1. Fungsi Utama
2. void main() {
  runApp(const MyApp());
}
Ini adalah titik awal aplikasi Flutter.
Fungsi runApp() akan menjalankan aplikasi dengan widget utama, yaitu MyApp.

Widget Utama: MyApp
class MyApp extends StatelessWidget {
  // ...kode...
}

MyApp adalah widget utama yang mengatur tema dan halaman awal aplikasi.
Menggunakan MaterialApp agar tampilan mengikuti gaya Material Design.

Halaman Utama: MyHomePage
class MyHomePage extends StatelessWidget {
  // ...kode...
}
Widget ini adalah halaman utama yang tampil saat aplikasi dibuka.
Menggunakan Scaffold untuk membuat struktur dasar aplikasi (ada AppBar dan body).

 Bagian Layout
AppBar: Bagian atas aplikasi, berisi judul.
Body: Isi utama aplikasi, terdiri dari:
Gambar (Image.asset)
Judul dan lokasi
Rating (ikon bintang dan angka)
Tombol aksi (CALL, ROUTE, SHARE)
Deskripsi tentang tempat

Widget Tombol
Widget _buildButtonColumn(IconData icon, String label) {
  // ...kode...
}

Fungsi ini membuat tombol dengan ikon dan teks di bawah gambar.
Kesimpulan
File main.dart ini adalah dasar aplikasi Flutter.
Semua tampilan diatur dengan widget.
Cocok untuk pemula karena strukturnya sederhana dan mudah dipahami.

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/8c6177db-537e-4510-bb09-1f14b87d5067" />


