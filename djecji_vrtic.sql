use master;
go
drop database if exists djecji_vrtic;
go
create database djecji_vrtic collate Croatian_CI_AS;
go
use djecji_vrtic;

create table odgojneskupine(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
djeca varchar(50) not null,
);

create table djeca(
sifra int not null primary key identity(1,1),
odgojneskupine int not null,
ime varchar(50) not null,
prezime varchar(50) not null,
dob varchar(10) null,
);


create table odgajateljice(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
iban varchar(50),
oib char(11),
);
--drop table strucnespreme;
create table strucnespreme(
sifra int not null primary key identity(1,1),
odgajateljice int not null,
);

alter table djeca add foreign key (odgojneskupine) references odgojneskupine(sifra);
alter table strucnespreme add foreign key (odgajateljice) references odgajateljice(sifra);

insert into odgojneskupine (naziv,djeca) values ('jaslička','muška'),('predškolska','muška');

insert into djeca (ime, prezime) values 
('Marko', 'Marić'),
('Marija','Lovrić');

insert into odgajateljice (ime,prezime,iban,oib)values
('Senka','Matijević',null,null),
('Katica','Baborski',null,null);


