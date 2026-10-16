{
  Kelompok ValuTech (Kom A) :
      Muhammad Iqbal Permata (261401043)
      Angello Ad Harvel Sitorus (261401053)
      Muhammad Affif (261401146)
}

program STOKAN;

uses crt;

type
  TBarang = record
    kode: string;   // kode unik barang
    nama: string;   // nama barang
    jumlah: integer; // jumlah stok barang
    satuan: string; // satuan stok (kg, pak, botol, ekor)
  end;

var
  data: array[1..100] of TBarang;
  n, pilihan: integer;

// === Fungsi untuk cek apakah kode sudah ada ===
function KodeSudahAda(kode: string): boolean;
var i: integer;
begin
  KodeSudahAda := false;
  for i := 1 to n do
    if data[i].kode = kode then
    begin
      KodeSudahAda := true;
      exit;
    end;
end;

// === Tambah Barang dengan validasi input ===
procedure TambahBarang;
var kodeBaru, namaBaru, satuanBaru: string;
    jumlahBaru: integer;
begin
  writeln('=== Input Barang Toko Hewan ===');
  repeat
    
    write('Masukkan kode barang: '); readln(kodeBaru); writeln;
    if (kodeBaru = '') then
      writeln('Kode tidak boleh kosong!')
    else if KodeSudahAda(kodeBaru) then
      writeln('Kode sudah digunakan, silakan masukkan kode lain!')
    else
      begin
        write('Masukkan nama barang: '); readln(namaBaru); writeln;
        if (namaBaru = '') then
        begin
          writeln('Nama barang tidak boleh kosong!');
          continue;
        end;

      write('Masukkan jumlah stok: '); readln(jumlahBaru);
      if (jumlahBaru <= 0) then
      begin
        writeln('Jumlah stok harus lebih dari 0!');
        continue;
      end;

      write('Masukkan satuan (misal: kg, pak, botol, ekor): '); readln(satuanBaru); writeln;
      if (satuanBaru = '') then
      begin
        writeln('Satuan tidak boleh kosong!');
        continue;
      end;

      n := n + 1;
      data[n].kode := kodeBaru;
      data[n].nama := namaBaru;
      data[n].jumlah := jumlahBaru;
      data[n].satuan := satuanBaru;
      writeln('Barang berhasil ditambahkan!');
      break;
    end;
  until false;
end;

// === Lihat Barang ===
procedure LihatBarang;
var i: integer;
begin
  if n = 0 then
  begin
    writeln('Data masih kosong, silakan tambah barang terlebih dahulu.');
    exit;
  end;

  writeln('=== Daftar Barang Toko Hewan ===');
  for i := 1 to n do
    writeln(i, '. ', data[i].kode, ' | ', data[i].nama,
            ' | Stok: ', data[i].jumlah, ' ', data[i].satuan);
end;

// === Update Barang dengan opsi ganti kode ===
procedure UpdateStok;
var kodeCari, kodeBaru, namaBaru, satuanBaru: string;
    i, jumlahBaru: integer;
    gantiKode: char;
begin
  if n = 0 then
  begin
    writeln('Data masih kosong, silakan tambah barang terlebih dahulu.');
    exit;
  end;

  writeln('=== Update Barang Toko Hewan ===');
  write('Masukkan kode barang yang ingin diupdate: '); readln(kodeCari);
  
  for i := 1 to n do
    if data[i].kode = kodeCari then
    begin
      writeln;
      writeln('Data Stok Lama:');
      writeln(i, '. ', data[i].kode, ' | ', data[i].nama,
              ' | Stok: ', data[i].jumlah, ' ', data[i].satuan);
      writeln;

      // Opsi ganti kode
      write('Apakah ingin mengganti kode barang? (y/n): '); readln(gantiKode);
      if (gantiKode = 'y') or (gantiKode = 'Y') then
      begin
        repeat
          write('Masukkan kode baru: '); readln(kodeBaru);
          if (kodeBaru = '') then
            writeln('Kode tidak boleh kosong!')
          else if KodeSudahAda(kodeBaru) then
            writeln('Kode sudah digunakan, silakan masukkan kode lain!')
          else
          begin
            data[i].kode := kodeBaru;
            break;
          end;
        until false;
      end;

      // Input data baru dengan validasi
      write('Masukkan nama baru: '); readln(namaBaru);
      if (namaBaru <> '') then data[i].nama := namaBaru;

      write('Masukkan stok baru: '); readln(jumlahBaru);
      if (jumlahBaru > 0) then data[i].jumlah := jumlahBaru;

      write('Masukkan satuan baru: '); readln(satuanBaru);
      if (satuanBaru <> '') then data[i].satuan := satuanBaru;

      writeln('Data barang berhasil diupdate!');
      exit;
    end;
  writeln('Barang tidak ditemukan!');
end;

// === Hapus Barang dengan konfirmasi ===
procedure HapusBarang;
var kodeCari: string; i,j: integer; ketemu: boolean; konfirmasi: char;
begin
  if n = 0 then
  begin
    writeln('Data masih kosong, silakan tambah barang terlebih dahulu.');
    exit;
  end;

  writeln('=== Hapus Barang Toko Hewan ===');
  write('Masukkan kode barang yang ingin dihapus: '); readln(kodeCari);
  ketemu := false;
  for i := 1 to n do
    if data[i].kode = kodeCari then
    begin
      ketemu := true;
      writeln('Data yang akan dihapus: ', data[i].nama, ' | Stok: ', data[i].jumlah, ' ', data[i].satuan);
      write('Apakah Anda yakin ingin menghapus? (y/n): '); readln(konfirmasi);
      if (konfirmasi = 'y') or (konfirmasi = 'Y') then
      begin
        for j := i to n-1 do
          data[j] := data[j+1];
        n := n - 1;
        writeln('Barang dengan kode ', kodeCari, ' berhasil dihapus!');
      end
      else
        writeln('Penghapusan dibatalkan.');
      break;
    end;
  if not ketemu then
    writeln('Barang tidak ditemukan!');
end;

// === Hitung Subtotal Barang (tanpa total semua stok) ===
procedure HitungTotal;
var i: integer;
begin
  if n = 0 then
  begin
    writeln('Data masih kosong, silakan tambah barang terlebih dahulu.');
    exit;
  end;

  writeln('=== Subtotal Stok Barang ===');
  for i := 1 to n do
    writeln(data[i].nama, ' (', data[i].kode, ') : ',
            data[i].jumlah, ' ', data[i].satuan);
end;

// === Program Utama ===
begin
  n := 0;
  repeat
    clrscr;
    writeln('=== STOKAN : Sistem Toko Hewan untuk Manajemen Stok Aman ===');
    writeln('1. Tambah Barang');
    writeln('2. Lihat Barang');
    writeln('3. Update Stok');
    writeln('4. Hapus Barang');
    writeln('5. Lihat Subtotal Stok');
    writeln('6. Keluar');
    write('Pilihan: '); readln(pilihan);

    clrscr;

    case pilihan of
        1: TambahBarang;
        2: LihatBarang;
        3: UpdateStok;
        4: HapusBarang;
        5: HitungTotal;
        6: writeln('Terima kasih telah menggunakan STOKAN!');
        else writeln('Pilihan tidak valid!');
    end;

    writeln;
    write('Tekan Enter untuk lanjut...');
    readln;
  until (pilihan = 6);
end.
