load R0,41                                     ;a deðerini R0'a atar.
load R1,22                                      ;b deðerini R1'e atar. (a ve b deðerlerini memorylerden çekmememin sebebi sonuçlar yanlýþ çýkabiliyor.Örneðin memoryden çektiðimizde 21 mod 8 nýn cevabý 5 çýkmasý gerekirken 1 çýkýyor.)
load R2,1
load R5,-1
load R6,48
move RB,R0
first: addi     R3,R3,R1                        ;byi saydýrmaya baþlar.
       addi     R7,R7,R2                        ;Kaç kere sayýnýn topladýðýný bulur.(kaç kere döngünün döndüðünü)
       jmpLE    R3<=R0,first;                   ;b sayýsýnýn a sayýsýný geçene kadar döngünün dönmesini saðlar.
       addi     R7,R7,R5                        ;Döngünün dönme sayýsýndan 1 çýkartýr.Altta b sayýsýnýn a sayýsýna en yakýn katýný bulabilmek için.
       move     R0,R7                           ;Altta karþýlaþtýrma iþlemi yapmak için b nin a ya en yakýn katýný R0 a atar.                     
second: addi    R8,R8,R2                        ;Döngüde katýn sayýsýný tutar.b'nin a ya en yakýn katý ile karþýlaþtýrmak için.
        addi    R9,R9,R1                        ;b nin a ya yakýn kat sayýsý kadar b toplar.
        jmpEQ   R8=R0,secondd                   ;b nin a ya yakýn kat sayýsýnýn kontrolünü yapar.Kat sayý eþitlendiðinde secondd a gider.
        jmp     second                          ;Eþitlik saðlanmadýðýnda döngüyü baþa alýr.

secondd:  move R0,RB                            ;a sayýsýný R0 a atar.   

third: 
       addi     R4,R4,R2                        ;Döngünün kaç defa döndüðünü bulur. Cevabýmýz bu sayýdýr.
       addi     R9,R9,R2                        ;a mod b yi bulmak için üstte bulduðumuz b nin a ya en yakýn katýna 1er sayý ekler.
       JMPEQ    R9=R0,fourth                    ;sayýmýz a ya eþit olduðunda sonucu ekrana yazdýrmak için fourth a gider.
       jmp      third                           ;Döngüyü baþa alýr.    
       
fourth: addi R4,R4,R6                           ;Sonucu ekrana basmak için elde edilen sayý ASCII deki 0 ýn karþýlýðý ile toplanýr.
        move RF,R4                              ;Sonuç ekrana yazýlýr.
        halt                                    ;program bitirilir.

