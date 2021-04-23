load R0,41                                     ;a de�erini R0'a atar.
load R1,22                                      ;b de�erini R1'e atar. (a ve b de�erlerini memorylerden �ekmememin sebebi sonu�lar yanl�� ��kabiliyor.�rne�in memoryden �ekti�imizde 21 mod 8 n�n cevab� 5 ��kmas� gerekirken 1 ��k�yor.)
load R2,1
load R5,-1
load R6,48
move RB,R0
first: addi     R3,R3,R1                        ;byi sayd�rmaya ba�lar.
       addi     R7,R7,R2                        ;Ka� kere say�n�n toplad���n� bulur.(ka� kere d�ng�n�n d�nd���n�)
       jmpLE    R3<=R0,first;                   ;b say�s�n�n a say�s�n� ge�ene kadar d�ng�n�n d�nmesini sa�lar.
       addi     R7,R7,R5                        ;D�ng�n�n d�nme say�s�ndan 1 ��kart�r.Altta b say�s�n�n a say�s�na en yak�n kat�n� bulabilmek i�in.
       move     R0,R7                           ;Altta kar��la�t�rma i�lemi yapmak i�in b nin a ya en yak�n kat�n� R0 a atar.                     
second: addi    R8,R8,R2                        ;D�ng�de kat�n say�s�n� tutar.b'nin a ya en yak�n kat� ile kar��la�t�rmak i�in.
        addi    R9,R9,R1                        ;b nin a ya yak�n kat say�s� kadar b toplar.
        jmpEQ   R8=R0,secondd                   ;b nin a ya yak�n kat say�s�n�n kontrol�n� yapar.Kat say� e�itlendi�inde secondd a gider.
        jmp     second                          ;E�itlik sa�lanmad���nda d�ng�y� ba�a al�r.

secondd:  move R0,RB                            ;a say�s�n� R0 a atar.   

third: 
       addi     R4,R4,R2                        ;D�ng�n�n ka� defa d�nd���n� bulur. Cevab�m�z bu say�d�r.
       addi     R9,R9,R2                        ;a mod b yi bulmak i�in �stte buldu�umuz b nin a ya en yak�n kat�na 1er say� ekler.
       JMPEQ    R9=R0,fourth                    ;say�m�z a ya e�it oldu�unda sonucu ekrana yazd�rmak i�in fourth a gider.
       jmp      third                           ;D�ng�y� ba�a al�r.    
       
fourth: addi R4,R4,R6                           ;Sonucu ekrana basmak i�in elde edilen say� ASCII deki 0 �n kar��l��� ile toplan�r.
        move RF,R4                              ;Sonu� ekrana yaz�l�r.
        halt                                    ;program bitirilir.

