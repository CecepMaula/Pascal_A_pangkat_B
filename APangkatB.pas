program A_Pangkat_B;
{I.S : user memasukan harga A dan harga B}
{F.S : menampilkan hasil A pangkat B menggunakan operator perkalian}

uses crt;
const
  User = 'Farhaan';
  Pass = 'cecep';
var
  A, B, Hasil, i : integer;
  Lagi           : char;
  UserName, Password : string;
begin
 window(30,11,90,19); textbackground(9); clrscr;
 gotoxy(26,2); textcolor(10); write('<< LOGIN >>');
 gotoxy(20,4); write('Nama Pengguna : ');
 readln(UserName);
 gotoxy(20,5); write('Kata Kunci    : ');
 readln(Password);
 while (UserName <> User) or (Password <> Pass) do
 begin
   gotoxy(20,7); textcolor(12); write('Login Salah, Ulangi!'); readln;
   gotoxy(20,7); clreol;
   gotoxy(36,4); clreol;
   gotoxy(36,5); clreol;
   gotoxy(36,4); readln(UserName);
   gotoxy(36,5); readln(Password);
 end;
 window(1,1,120,30); textbackground(0); clrscr;
 repeat
  clrscr;
  window(2,2,59,29); textbackground(9); clrscr;
  gotoxy(23,2); textcolor(10); write('Data Masukan');
  gotoxy(22,3); write('______________');
  {Memasukan harga A dan harga B}
  gotoxy(4,5); write('Masukan Harga A : '); textcolor(12); readln(A);
  textcolor(10);
  gotoxy(4,6); write('Masukan Harga B : '); textcolor(12); readln(B);
  textcolor(10);
  {Validasi harga B tidak boleh negatif}
  while (B < 0) do
  begin
    gotoxy(4,7);
    textcolor(12); write('Harga B tidak boleh negatif, Ulangi!');
    textcolor(10);
    gotoxy(4,8);
    textcolor(12); write('Tekan Enter Untuk Melanjutkan');
    textcolor(10);
    readln;
    gotoxy(4,7); clreol;
    gotoxy(4,8); clreol;
    gotoxy(22,6); clreol; textcolor(12); readln(B);
    textcolor(10);
  end; //endwhile
  {Menghitung A pangkat B menggunakan operator perkalian}
  if (B = 0)
    then
    begin
      Hasil := 1;
    end
  else
  begin
    Hasil := 1;
    for i := 1 to B do
    Hasil := Hasil * A;
  end;
  window(61,2,119,29); textbackground(9); clrscr;
  gotoxy(23,2); textcolor(10); write('Tampilan Keluaran');
  gotoxy(22,3); write('___________________');

  {Menampilkan A pangkat B}
  gotoxy(4,5); textcolor(12); write(A,' Pangkat ',B,' = ');
  if (B = 0) or (B = 1)
    then
      write(Hasil)
    else
    begin
      for i := 1 to B do
      begin
      delay(800);

        write(A);
        if (i <> B)
          then
            write('x');
      end;
      gotoxy(15,6); write(' = ',Hasil);
    end;
    gotoxy(4,8); write('Mau Coba Lagi [Y/T] : ');
    readln(Lagi);
  until (Lagi = 'T') or (Lagi = 't');
end.
