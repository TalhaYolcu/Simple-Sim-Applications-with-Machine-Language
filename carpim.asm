;program a*b islemini hesaplar
load R1,2 ;a sayisi
load R2,4 ;b sayisi
load R3,1 ;döngünün kaç kere döndüðünü hesaplamak için kullanýlýr.
load R9,48 ;ekrana bastirilacak sayýnýn dogru basilmasi icin 48 eklemek gerek.

move R0,R2

loop: addi RE,RE,R1  ;ana cevabý hesaplayan satýr
      addi R4,R4,R3  ;dongunun kac kere dondugunu hesaplayan kisim
      jmpEQ R4=R0,end ;dongu kontrol kismi
      jmp loop

end:
     addi RE,RE,R9
     move RF,RE ;sonucu ekrana bastirir.
     halt
       