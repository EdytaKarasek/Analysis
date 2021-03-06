
#Zbudowa� ramk� (data frame) zawieraj�c� dane pracownik�w: id, imi�, nazwisko, wiek, sta� pracy,
#stanowisko, miasto, pensja. Wype�ni� ramk� danymi, w taki spos�b, aby poni�sze zapytania dawa�y
#sensowne wyniki (tzn. na tyle du�o r�nych warto�ci aby powsta�y zestawienia i wykresy zawieraj�ce
#po kilka element�w).
#a) Wyszuka� tych pracownik�w z Warszawy, kt�ry zarabiaj� co najmniej 6000 z� (wy�wietli�
#list�: imi�, nazwisko, stanowisko)
#b) Obliczy� sum� zarobk�w pracownik�w z Wroc�awia
#c) Obliczy� �redni� wysoko�� pensji na stanowisku �Programista�
#d) Znale�� najta�szego pracownika z Poznania
#e) Zrobi� wykres ko�owy zarobk�w pracownik�w z Opola#



imie<-c("Anna","Alina","Agata","Amelia","Adrianna","Barbara","Bogumi�a","Bernadeta","Celina","Dagmara","Dominika","Edyta","Ewa","El�bieta","Eryka","Halina","Helena","Izabela","Janina","Julia","Kamila","Klara","Klaudia","Krystyna","Karolina","Katarzyna","Magda","Monika","Marta","Michalina","Mieczys�awa","Natalia","Natasza","Nadia","Oksana","Patrycja","Pola","Paulina","Tamara","Tatiana")
nazwisko<-c("Barwi�ska","Krysi�ska","Gutkowska","Szczodrowska","Grzyma�a","Frej","Niemyjska","Szkutnik","Orli�ska","Komor","Sasin","Szwarc","Zub","Wola�ska","Dr��kiewicz","Niewiadomska","Deka","Stachyra","Skrodzka","Tworkowska","Roszczyk","Olech","Smo�a","Biela","Kasztelan","Pucha�a","Miller","Fila","W�sik","�ukawska","Matyja","Sikorska","�awniczak","Bochen","Serwatka","Tracz","Kruszyna","Kra�nicka","P�uciennik","�wi�tek")
wiek<-c(23,25,27,29,23,25,26,24,25,25,26,29,28,30,32,31,30,33,32,33,35,36,38,45,42,41,46,42,25,26,28,23,30,31,33,36,38,40,38,37)
staz_pracy<-c(1,2,3,3,1,2,2,1,2,2,3,6,4,5,6,8,5,2,6,3,4,4,3,10,10,11,15,20,1,2,2,3,3,2,3,5,6,6,6,7)
stanowisko<-c("kasjer","sprzedawca","kosmetyczka","geodeta","archeolog","aktor","programista","programista","programista","sprzedawca","sprzedawca","programista","tester","tester","programista","programista","analityk","lekarz","analityk","lekarz","programista","programista","aktor","lekarz","programista","ogrodnik","dentysta","weterynarz","architekt","rolnik","dietetyk","analityk","aktor","stewardessa","stewardessa","weterynarz","dietetyk","analityk","weterynarz","architekt")
miasto<-c("Warszawa","Pozna�","Opole","Wroc�aw","Warszawa","Pozna�","Opole","Wroc�aw","Warszawa","Pozna�","Opole","Wroc�aw","Warszawa","Pozna�","Opole","Wroc�aw","Warszawa","Pozna�","Opole","Wroc�aw","Warszawa","Pozna�","Opole","Wroc�aw","Warszawa","Pozna�","Opole","Wroc�aw","Warszawa","Pozna�","Opole","Wroc�aw","Warszawa","Pozna�","Opole","Wroc�aw","Warszawa","Pozna�","Opole","Wroc�aw")
pensja<-c(1800,1850,2800,2900,1500,2500,3200,3500,4500,2200,1600,7500,6500,5500,5000,12000,8000,4500,4500,7500,9500,6500,3500,16000,22000,3500,15000,15000,15200,3600,3200,5000,5500,2800,2800,4500,5800,5000,4000,9500)

dane_pracownikow<- data.frame(imie,nazwisko,wiek,staz_pracy,stanowisko,miasto,pensja)
dane2<- subset(dane_pracownikow, subset= pensja > 6000 & miasto == "Warszawa" )
dane2

#Wy�wietlenie pracownik�w z Warszawy, kt�rzy zarabiaj� co najmniej 6000z�
dane2[,c("imie","nazwisko","stanowisko")]

#Obliczenie sumy zarobk�w pracownik�w z Wroc�awia
sum(dane_pracownikow[which(dane_pracownikow[,6]=="Wroc�aw"),7])

#Obliczy� �redni� wysoko�� pensji na stanowisku �Programista� 
mean(dane_pracownikow[which(dane_pracownikow[,5]=="programista"),7])

#Znale�� najta�szego pracownika z Poznania 
min(dane_pracownikow[which(dane_pracownikow[,6]=="Pozna�"),7])          

#Zrobi� wykres ko�owy zarobk�w pracownik�w z Opola 
pracownicy_Opole = subset(dane_pracownikow, subset = miasto == "Opole")
pie(pracownicy_Opole[,"pensja"] ,row.names(pracownicy_Opole))

