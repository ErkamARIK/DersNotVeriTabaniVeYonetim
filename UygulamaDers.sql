use school_library;
create table uyeler(
uyeNo int not null Primary key identity(1,1),
uyeAdi nvarchar(50) not null,
uyeSoyadi nvarchar(50) not null,
eposta nvarchar(50) not null,
cinsiyet char(2) not null,
telefon int
);
use school_library;
 create table adresler(
 adresNo int not null Primary key identity(1,1),
 sehir nvarchar(50),
 mahalle nvarchar(50),
 binaNo int,
 cadde nvarchar(100),
 ulke nvarchar(50),
 postaKodu int
 );
ALTER TABLE UYELER ADD adresNo int constraint FK_uyeler_adres
FOREIGN KEY (adresNo)
references ADRESLER (adresNo);

create table kutuphane(
kutuphaneNo int not null identity(1,1) PRIMARY KEY,
kutuphaneIsmi nvarchar(150),
aciklama nvarchar(500),
adresNo int constraint FK_adresler_kutuphane FOREIGN KEY(adresNo) references adresler(adresNo)
);
select * from kutuphane
