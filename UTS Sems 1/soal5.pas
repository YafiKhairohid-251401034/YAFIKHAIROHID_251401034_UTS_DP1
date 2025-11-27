program PolaAngkaRahasia;
uses crt;

var
  nama: string;
  n, i, j: integer;

begin
  clrscr;

  // Input nama siswa
  write('Masukkan nama siswa: ');
  readln(nama);

  // Input batas angka
  write('Masukkan nilai N: ');
  readln(n);

  writeln;
  writeln(nama, ', inilah pola angka rahasiamu');
  writeln;

  i := 1;
  repeat
    // Cetak baris angka ke-i sebanyak i kali
    j := 1;
    repeat
    write(i, ' ');
      if i mod 2 = 0 then
        write('(genap) ')
      else
        write('(ganjil) ');
      j := j + 1;
    until j > i;
    writeln;
    i := i + 1;
  until i > n;

  writeln;
  writeln('Selamat, ', nama, '! Kamu berhasil membuka pintu rahasia ke level berikutnya!');
end.