# [JUDUL]

## 📖 Deskripsi Singkat

LOREM IPSUM DOLOR SIT ATMET

---

## 👥 Daftar Anggota Kelompok

| No | Nama | NIM | KOM | Lab |
|----|------|-----|-----|-----|
| 1  | Muhammad Iqbal Permata   | 261401043 | A | 1 |
| 2  | Angello Ad Harvel Sitorus  | 261401053 | A | 1 |
| 3  | Muhammad Affif  | 261401146 | A | 2 |

---

## ✨ Fitur Utama

| No | Fitur | Deskripsi | Materi Pascal |
|----|-------|-----------|---------------|
| 1  | **Login Multi-Role** | Login dengan 3x percobaan, role: Admin, Dosen, Mahasiswa, Staff | `while-do`, `if-then-else` |
| 2  | **Input Data Mahasiswa** | Input NIM, nama, prodi, semester | `repeat-until`, `readln`, record |
| 3  | **Input Nilai Mata Kuliah** | Input nilai per MK, dengan STOP & skip nilai 0 | `repeat-until`, `break`, `continue` |
| 4  | **Hitung IPK** | Hitung IPK otomatis dari nilai & SKS | `for-to-do`, `if-then-else`, `case-of` |
| 5  | **Rekap KRS** | Tampilkan KRS lengkap dengan grade | `for-to-do` |
| 6  | **Cek Pencapaian** | Predikat akademik & notifikasi nilai rendah | nested-if |
| 7  | **Rekap Akademik** | Statistik keseluruhan mahasiswa | `for-to-do` |
| 8  | **Menu per Role** | Menu berbeda sesuai hak akses | `case-of`, `repeat-until` |

---

## 🧠 Penjelasan Logika Singkat

### 1. Login Multi-Role
Program meminta username & password. Jika salah, percobaan
dibatasi 3x menggunakan `while-do`. Jika berhasil, program
menyimpan role user dan mengarahkan ke menu yang sesuai.

```pascal
while (percobaan < 3) and (not login) do
begin
  write('Username : '); readln(user.username);
  write('Password : '); readln(user.password);
  if (user.username = 'admin') and (user.password = 'admin123') then
  begin
    user.role := 'admin';
    login := true;
  end
  else
    inc(percobaan);
end;
