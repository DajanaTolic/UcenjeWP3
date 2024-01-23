use master;
go
drop database if exists salon_za_pse;
go
create database salon_za_pse collate Croatian_CI_AS;
go
use salon_za_pse;

create table korisnici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
pasmina varchar(50) not null,
kilaža varchar(50) not null,
vlasnik varchar(50) not null
);

create table tretmani(
sifra int not null primary key identity(1,1),
datum datetime,
korisnik int
);

create table stavke(
sifra int not null primary key identity(1,1),
tretman int ,
usluga int ,
količina varchar(50) not null
);

create table usluge(
sifra int not null primary key identity(1,1),
trajanje varchar(50) not null,
cijena varchar(50) not null,
naziv varchar(50) not null
);

alter table tretmani add foreign key (korisnik) references korisnici(sifra);
alter table stavke add foreign key (tretman) references tretmani(sifra);
alter table stavke add foreign key (usluga) references usluge(sifra);


insert into korisnici (ime,pasmina,kilaža,vlasnik)
values ('Floki','šnaucer','5kg','Matko Boras'),
('Bobi','njemačkadoga','20kg','Ivana Janješić'),
('Zen','hrt','7kg','Bojan Serdar'),
('Hana','bigl','6kg','Renata Božić'),
('Oliver','škotski ovčar','8kg','Katarina Kneif');


insert into tretmani( datum)
values ('2024-08-07 12:00:00'),
('2024-08-07 13:00:00'),
('2024-08-07 15:00:00'),
('2024-08-07 17:00:00'),
('2024-08-07 19:00:00');

insert into stavke(količina)
values ('1'),
('1'),
('1'),
('1'),
('1');

insert into usluge(trajanje, cijena,naziv)
values ('1','20eura','rezanje noktiju'),
('2','30eura','kupanje'),
('2','30eura','kupanje'),
('2','25eura','šišanje'),
('2','25eura','šišanje');



