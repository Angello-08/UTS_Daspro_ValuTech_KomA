# 🐾 STOKAN – Sistem Toko Hewan untuk Manajemen Stok Aman

> **Proyek UTS Laboratorium Dasar Pemrograman (DP1)**  
> **Program Studi Ilmu Komputer — Universitas Sumatera Utara**

---

## 📌 Ringkasan Proyek

**STOKAN** (*Sistem Toko Hewan untuk Manajemen Stok Aman*) adalah program berbasis Pascal CLI (Command Line Interface) yang dirancang untuk mempermudah pemilik atau pengelola toko hewan (*pet shop*) dalam melakukan pencatatan, pemantauan, serta pembaruan stok barang/produk secara digital, terstruktur, dan efisien.

---

## 👥 Anggota Kelompok

**Nama Kelompok:** Kelompok ValuTech  
**Kelas / Kom:** KOM A  
**Program Studi:** Ilmu Komputer, Fasilkom-TI USU  

| No | Nama | NIM | Kom |
|:--:|:---|:---:|:---|
| 1 | **Muhammad Iqbal Permata** | `261401043` | A |
| 2 | **Angello Ad Harvel Sitorus** | `261401053` | A |
| 3 | **Muhammad Affif** | `261401146` | A |

---

## ✨ Fitur Utama Program

Program ini dilengkapi dengan berbagai fitur fungsional untuk mengelola persediaan barang:

1. ➕ **Tambah Barang (`TambahBarang`)**
   - Menambahkan data barang baru ke dalam sistem.
   - Menginputkan kode unik barang, nama barang, jumlah ketersediaan stok, dan jenis satuan (misal: *kg, pak, botol, ekor*).
2. 📋 **Lihat Barang (`LihatBarang`)**
   - Menampilkan seluruh daftar barang yang tersimpan dalam format daftar yang rapi beserta kodenya.
3. 🔄 **Update Stok (`UpdateStok`)**
   - Mencari barang berdasarkan kode unik.
   - Menampilkan jumlah stok saat ini dan memperbarui jumlah stok dengan data terbaru.
4. 🧮 **Hitung Total Jumlah Stok (`HitungTotal`)**
   - Mengalkulasi total keseluruhan kuantitas barang/stok yang ada di dalam toko secara otomatis.
5. 🚪 **Keluar**
   - Mengakhiri jalannya program secara aman.

---

## 🛠️ Konsep & Pemrograman Pascal yang Diterapkan

Proyek ini telah mengintegrasikan syarat dan konsep materi Praktikum Dasar Pemrograman:

- **Konsep Dasar & I/O:** Memanfaatkan perintah `write`, `writeln`, `readln`, serta pembersihan layar (`clrscr`).
- **Tipe Data Bentukan (`Record` & `Array`):** Menggunakan `type TBarang = record` untuk mengelompokkan atribut barang dan `array[1..100] of TBarang` untuk menyimpan koleksi data.
- **Struktur Pengkondisian:** Menggunakan `case-of` untuk navigasi menu interaktif dan `if-then` untuk pencarian kode barang.
- **Struktur Perulangan:**
  - `repeat-until` untuk menjaga alur program tetap berjalan interaktif hingga pengguna memilih menu keluar.
  - `for-to-do` untuk iterasi pembacaan array saat menampilkan, memperbarui, atau menghitung total stok.
- **Kontrol Peloncatan:** Penggunaan instruksi `exit` untuk menghentikan prosedur `UpdateStok` secara efisien setelah barang ditemukan.

---

