use master;
go
drop database if exists postolar;
go
create database postolar collate Croatian_CI_AS;
go

use postolar;

create table postolari(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11)
);


create table obuće(
sifra int not null primary key identity(1,1),
vrsta varchar(50),
količina varchar(50),
postolari int,
korisnici int,
šegrti int,
);

create table korisnici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
);

create table šegrti(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
brojugovora varchar(10),
);

alter table obuće add foreign key (postolari) references postolari(sifra);
alter table obuće add foreign key (korisnici) references korisnici(sifra);
alter table obuće add foreign key (šegrti) references šegrti(sifra);

insert into korisnici (ime,prezime)
values ('Ivan','Ivić'),
('Marina','Marić');

insert into obuće (vrsta,količina)
values ('štikla','1'),
('čizme','2');

insert into postolari( ime,prezime,oib)
values('Renato','Zelić',null),
('Karlo','Marić',null)
;

insert into šegrti(ime,prezime,brojugovora)
values ('Zoran','Pavić',null),
('Ivan','Ivić',null);




