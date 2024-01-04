use master;
go
drop database if exists muzej;
go
create database muzej collate Croatian_CI_AS;
go
use muzej;

create table izložbe(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
kustos varchar(50) not null
);

create table kustosi(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11)
);



create table djela(
sifra int not null primary key identity(1,1),
tehnike varchar(50) not null,
izložbe int
);

create table sponzori(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11)
);


alter table djela add foreign key (izložbe) references izložbe(sifra);

insert into djela (tehnike)
values 
('akvarel'),
('tempera');

insert into izložbe (naziv,kustos)
values 
('modernizam','Marin'),
('secesija','Luka');

insert into kustosi (ime,prezime)
values
('Marko','Marić'),
('Ivana','Pavlović')

insert into sponzori (ime, prezime)
values
('Josip','Pavlović'),
('Luka','Gracin');
