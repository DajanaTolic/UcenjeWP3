use master;
go
drop database if exists samostan;
go
create database samostan collate Croatian_CI_AS;
go
use samostan;

create table svećenici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11),
poslovi int
);


create table poslovi(
sifra int not null primary key identity(1,1),
duljina varchar(50),
vrsta varchar(50),
svećenici int
);

alter table svećenici add foreign key (poslovi) references poslovi(sifra);
alter table poslovi add foreign key (svećenici) references svećenici(sifra);


insert into poslovi (duljina,vrsta)
values ('30','misa'),
('60','krštenje');

insert into svećenici (ime, prezime, oib)
values
('Marko','Marulić',null),
('Ivano','Kunić',null);





