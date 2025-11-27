program biayasewamobil; 
uses crt;

var
    jenis: string;
    hari, jarak: integer;
    biayaHarian, biayaJarak, totalBiaya: longint;

begin
    clrscr;

    // input
    write('Masukkan Jenis Mobil (Ekonomi/Sedan/SUV): ');
    readln(jenis);

    write('Pemesanan berapa hari: ');
    readln(hari);

    write('Berkendara sejauh (KM): ');
    readln(jarak);

    // Biaya harian berdasarkan jenis mobil
    if (LowerCase(jenis)='ekonomi') then
        biayaHarian := 300000
    else if (LowerCase(jenis)= 'sedan')then
        biayaHarian := 100000
    else if (LowerCase(jenis)= 'suv')then
        biayaHarian := 500000
    else
    begin
        writeln('Jenis mobil tidak valid.');
        halt;
    end;

    // Hitung biaya jarak tempuh
    if jarak <= 100 then
        biayaJarak := jarak * 1500
    else if jarak <= 200 then
        biayaJarak := 100 * 1500 + (jarak - 100) * 1000
    else
        biayaJarak := 100 * 1500 + 100 * 1000 + (jarak - 200) * 500;

    // Hitung total biaya
    totalBiaya := biayaHarian * hari + biayaJarak;

    // Output
    writeln('Total Biaya Sewa: RP. ', totalBiaya);
end.