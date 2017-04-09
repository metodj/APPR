# APPR
Projekt pri predmetu Analiza podatkov s programom R. Šolsko leto 2016/2017.

## Tematika: Analiza različnih finančnih podatkov

Pri projektu bom analiziral dve različni vrsti podatkov. Prvi "dataset" je v obliki CSV
in vključuje podatke o najemnikih bančnih posojil. Gre za veliko podatkovno bazo, saj obsega kar 
900 tisoč komitentov in pri vsakem je podanih 75 spremenljivk ("credit rating", količina posojila, geografska lokacija...).
Prva faza bo tako vključevala selekcijo najpomembnejših spremenljivk in grafični prikaz le-teh. 
Kasneje bom poskusil implementirati napovedovalni model, ki bo iz danih podatkov lahko napovedal ali bo komitent odplačal dolg 
ali pa bo prišlo do ti. "defaulta". Podatki se nahajajo tu:

https://www.kaggle.com/wendykan/lending-club-loan-data

Za drugi del bom uporabil podatke o najpomembnejših dnevnih novicah in gibanje ameriškega borznega indeksa S&P 500.
Podatke bom pridobil iz spletnih strani (zato bodo verjetno v xml ali html obliki) s ti. "data scrappingom".
Naredil bom binarni klasifikator, ki bo na podlagi naslovov najpopularnejših dnevnih novic, napovedal ali se bo vrednost
indeksa povečala ali zmanjšala. Pri delu si bom pomagal s podatki in implentaciji podobnega problema na tem naslovu:

https://www.kaggle.com/aaron7sun/stocknews

Delo bo potekalu v programskem jeziku R in v delovnem okolju Jupyter notebook.
