program ContohGoto;
uses crt;

label 10, 20, 30;  { deklarasi label }

var
  angka: integer;

begin
  clrscr;
  write('Masukkan angka (1-5): ');
  readln(angka);

  if angka < 1 then
    goto 10
  else if angka > 5 then
    goto 20;

  writeln('Angka valid: ', angka);
  goto 30;

10:
  writeln('Angka terlalu kecil!');
  goto 30;

20:
  writeln('Angka terlalu besar!');

30:
  writeln('Program selesai.');
  readln;
end.
