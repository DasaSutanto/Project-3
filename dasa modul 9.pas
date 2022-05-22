program pembelian_tiket;

uses crt;

label beli;

type boi=record
     nm,film,jam:string;
     jmlh:real;
     end;
var
harga:real;
data: array [1..100] of boi;
nonton:TEXT;
z,kanan,kiri,atas,bawah,x,i:integer;
pilihan,ph,ch,masih:char;
nntn,nntn1,nntn2,space:string;


procedure tckt;
begin
writeln('selamat datang di pembelian tiket nonton bioskop di apk pascal');
writeln('tiket tiket nonton bioskop yang tersedia :');
writeln('1.Toko Barang Mantan');
writeln('2.I Still Believe');
writeln('3.Onward');
writeln('4.BloodShoot');
writeln('5.Legend of the guardians:The owls of ga''hoole');

readln;

end;
procedure kondisi;
begin

        with data[i] do
        begin

                write('PILIH FILM yang ingin di nonton [1.  2.  3.  4.  5. ]---->');

                        repeat pilihan:=readkey; until pilihan in ['1','2','3','4','5'];
                        CASE pilihan of
                        '1': film:='Toko Barang Mantan';

                        '2': film:='I Still Believe';

                        '3': film:='OnWard';

                        '4': film:='BloodShoot';

                        '5': film:='Legend of the guardians:The owls of ga''hoole';

                        end;

        writeln(film);
        writeln;
        write('nama penerima tiket                               :'); readln(nm);
        write('jumlah tiket yang ingin di beli                   :'); readln(jmlh);
        writeln('jam nonton yang di ingin kan                      :');
        write('>-10:00-<  >-13:00-<   >-15:00-<   >-20:00-<   -->'); readln(jam);
        harga:=35000*jmlh;
        writeln('jumlah harga',jmlh:3:0,' tiket adalah Rp.',harga:6:0,' terimakasih');
        end;
readln;
end;

procedure tulis;
begin
clrscr;
   assign(nonton,'nonton.txt');
   {$I-}
   reset(nonton);
   {$I+}
   if IOResult=0 then
   begin
      write('File nonton.txt sudah ada di drive, hapus dan buat file baru?[Y,T]');
      repeat ph:=readkey; until upcase(ph) in ['Y','T'];
      if upcase(ph)='T' then halt;
   end;
   rewrite(nonton);
      with data[i] do
      begin
      writeln(nonton,film);
      writeln(nonton,nm);
      writeln(nonton,jmlh);
      writeln(nonton,jam);
      end;
   close(nonton);
end;
procedure tambah;
begin
   assign(nonton,'nonton.txt');
   append(nonton);
      with data[I] do
      begin
      writeln(nonton,film);
      writeln(nonton,nm);
      writeln(nonton,jmlh);
      writeln(nonton,jam);

      end;

end;

procedure baca;
begin
   assign(nonton,'nonton.txt');
   reset(nonton);
   while not eof(nonton) do
   begin
      with data[I] do
      begin
      writeln(nonton,film);
      writeln(nonton,nm);
      writeln(nonton,jmlh);
      writeln(nonton,jam);
      end;
   end;
close(nonton);
end;

procedure output;
begin
textbackground(white);
clrscr;
        writeln('PEMBELIAN TIKET ',I);
                        textcolor(cyan); textbackground(black); clrscr;
for z:=1 to 26 do
        for x:=1 to 120 do write(chr(101));
        kiri:=8; atas:=3;kanan:=120-kiri;bawah:=36-atas-1;
        textcolor(black);
for z:=1 to (kanan-kiri) do
begin
	gotoxy(kiri+2+z,bawah+1);write(chr(100));
end;
for z:=1 to (bawah-atas) do
 for x:=1 to 2 do
 begin
 gotoxy(kanan+x,atas+z); write(chr(100));
 end;
window(kiri,atas,kanan,bawah);
textbackground(RED); clrscr; textcolor(white);
gotoxy(2,1); write(chr(219));
gotoxy(kanan-kiri,1); write(chr(190));
for z:=3 to kanan-kiri-1 do
begin
 gotoxy(z,1);write(chr(180));
 gotoxy(z,bawah-atas+1); write(chr(180));
end;
for x:=2 to bawah-4 do
begin
  gotoxy(2,x);write(chr(150));
  gotoxy(kanan-kiri,x); write(chr(150));
end;
gotoxy(2,x+1);write(chr(198));
gotoxy(kanan-kiri,x+1); write(chr(201));
window(kiri+2,atas+1,kanan-2,bawah-1); textcolor(yellow);
textcolor(White);
nntn:='FOTO TIKET INI SEBAGAI TIKET RESMI KETIKA MENONTON';
Space:='                                               ';
nntn:=concat(space,nntn,space);
repeat
        nntn1:=copy(nntn,2,length(nntn));
        nntn2:=copy(nntn,1,1);
        nntn:=concat(nntn1,nntn2);
        gotoxy(17,2);write(nntn);
        delay(70);
until keypressed;

gotoxy(16,3); for z:=1 to 31 do write(chr(178));
writeln;
with data[i] do
begin
writeln('Nama                     :',nm);
writeln('Judul film               :',film);
writeln('Dengan tangguhan         :',jmlh:0,'orang');
writeln('Jam tayang               :',jam);
writeln('harga                    :RP',harga:6:0);
readln;
repeat until keypressed;
end;
end;


begin
clrscr;
i:=1;
repeat;


   beli:
   writeln('                                          SELAMAT DATANG');
   writeln('=====================================================================================================');
   writeln('                                 DI PEMBELIAN TIKET NONTON BIOSKOP ');
   writeln('                               =====================================     ');
   writeln;
   writeln('1.PEMBELIAN TIKET BARU');
   writeln('2.TAMBAH PEMBELIAN TIKET');
   writeln('3.LIHAT DATA');
   writeln('4.KELUAR');
   writeln;
   write('Pilihan : ');
   repeat ch:=readkey until ch in['1','2','3','4','5'];
   clrscr;
   case ch of
   '1':begin tckt; kondisi; tulis; output; end;
   '2':begin tckt; kondisi; tambah; output; end;
   '3':output;
   '4':halt;
   end;

write('kembali ke menu awal-->[Y|N]'); repeat masih:=readkey; until upcase(masih) in ['Y','N']; clrscr;
if upcase(masih)='Y' then  begin inc(i); goto beli; end;

until ch='4';
   readln;

end.







