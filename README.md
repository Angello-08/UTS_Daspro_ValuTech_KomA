# 🐾 STOKAN – Sistem Toko Hewan untuk Manajemen Stok Aman

## 📌 Deskripsi Singkat
STOKAN adalah program berbasis **Pascal** yang dikembangkan sebagai proyek Ujian Tengah Semester (UTS) mata kuliah **Dasar Pemrograman (DP1)** di Universitas Sumatera Utara.  
Program ini berfungsi sebagai sistem manajemen stok sederhana untuk toko hewan, dengan fitur interaktif berbasis menu yang memudahkan pengguna dalam menambah, melihat, memperbarui, dan menghapus data barang.

---

## 👥 Anggota Kelompok ValuTech (Kom A)
| Nama | NIM | Kom | Lab |
|------|------|-----|-----|
| Muhammad Iqbal Permata | 261401043 | A | 1 |
| Angello Ad Harvel Sitorus | 261401053 | A | 1 |
| Muhammad Affif | 261401146 | A | 2 |

---

## ⚙️ Fitur Utama Program
### 1️⃣ Tambah Barang
- Input data barang: **kode**, **nama**, **jumlah stok**, dan **satuan**.  
- Validasi:
  - Kode tidak boleh kosong dan harus unik.
  - Nama barang tidak boleh kosong.
  - Jumlah stok harus lebih dari 0.
  - Satuan tidak boleh kosong.

### 2️⃣ Lihat Barang
- Menampilkan daftar seluruh barang yang tersimpan.  
- Jika belum ada data, program menampilkan pesan:  
  > "Data masih kosong, silakan tambah barang terlebih dahulu."

### 3️⃣ Update Stok
- Mencari barang berdasarkan **kode**.  
- Menampilkan data lama sebelum diubah.  
- Opsi untuk **mengganti kode barang** (dengan validasi agar tidak duplikat).  
- Dapat memperbarui nama, jumlah stok, dan satuan.

### 4️⃣ Hapus Barang
- Mencari barang berdasarkan **kode**.  
- Menampilkan data yang akan dihapus.  
- Konfirmasi penghapusan dengan pilihan `(y/n)`.  
- Jika dikonfirmasi, data dihapus dan array digeser agar tetap rapi.

### 5️⃣ Lihat Subtotal Stok
- Menampilkan jumlah stok tiap barang beserta satuannya.  
- Tidak menampilkan total keseluruhan karena satuan berbeda tidak dapat dijumlahkan.

### 6️⃣ Menu Interaktif
- Navigasi berbasis **repeat-until** dengan pilihan fitur 1–6.  
- Validasi input menu dan pesan kesalahan jika pilihan tidak valid.

---

## 🧠 Konsep Pemrograman yang Diimplementasikan
| Konsep | Implementasi |
|--------|---------------|
| **Input/Output** | `write`, `writeln`, `readln` |
| **Struktur Pengkondisian** | `if-then-else`, `case-of` |
| **Looping** | `for`, `repeat-until` |
| **Kontrol Loop** | `exit`, `continue` |
| **Menu Interaktif** | Perulangan berbasis `repeat-until` dengan pilihan fitur |
| **Validasi Data** | Mengecek input kosong, duplikasi kode, dan nilai stok |

---

## 📷 Dokumentasi Program
> Berikut screenshot dokumentasi program ini:

### 🖥️ Tampilan Menu Utama
![Menu Utama](https://drive.google.com/uc?export=view&id=1HS9FfrYkGmUVUT_XYg-OOIijyEl4qNzK)

### ➕ Tambah Barang
![Fitur Tambah Barang](https://drive.google.com/uc?export=view&id=1kD14bFcQA-OCarSuaF_sF2tJwmMm_5gi)

### 👁️ Lihat Barang
![Fitur Tambah Barang](https://drive.google.com/uc?export=view&id=1KwcyjB1MzOBwdXbVI7Qe0XOD7gaRDTAs)

### 🔄 Update Stok
![Fitur Update Stok](https://drive.google.com/uc?export=view&id=1IAygOGSep8wZrjfp9gB8OW_kX2PM8QMv)
**Daftar Barang setelah Update Stok:**
![Daftar Update Stok](https://drive.google.com/uc?export=view&id=1aarsz50TaWjlvWF_hnhr9yQ0Xkj88YfR)

### ❌ Hapus Barang
![Fitur Update Stok](https://drive.google.com/uc?export=view&id=1JTe0RvUfq3roGGtySIzdcg-KCQED7OBD)
**Daftar Barang setelah Salah Satu Barang dihapus:**
![Daftar Update Stok](https://drive.google.com/uc?export=view&id=1U_RGOeEC6nMcItbenLBaepwM7XdUV_Eg)

### 📊 Lihat Subtotal Stok
![Fitur Lihat Subtotal Stok](https://drive.google.com/uc?export=view&id=1zpWY08NbitSWyS7FWxVAjnkR03aaHZfx)

