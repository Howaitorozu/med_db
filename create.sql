create database przychodnia;
go
use przychodnia;
go

create table panstwa (
     id int primary key
    ,nazwa nvarchar(100)
    );
create table pacjenci (
     id int primary key
    ,imie nvarchar(120) not null
    ,nazwisko nvarchar(150) not null
    ,id_p int not null constraint fk_p foreign key  (id_p) references panstwa(id)
	,miasto nvarchar(100) not null
    ,ulica nvarchar(150) not null
    ,nr_dom char(10) not null
    ,tel nvarchar(20) not null
	,pesel char(11)
    );

create table specjalizacje (
     id int not null primary key
    ,nazwa nvarchar(80)
    );

create table pracownicy (
     id int primary key
    ,imie nvarchar(120) not null
    ,nazwisko nvarchar(150) not null
    ,spec int not null constraint fk_sp foreign key (spec) references specjalizacje(id)
    );

create table lekarze (
	id int constraint fk_l foreign key (id) references pracownicy(id)
	,nazwa nvarchar(80)
	);


create table grupa (
     id int not null primary key
    ,nazwa nvarchar(190)
    );

create table icd (
    id char(6) primary key
    ,nazwa nvarchar(220)
    ,grupa int not null constraint fk_gr foreign key (grupa) references grupa(id)
	);

create table wizyta (
     id int primary key
    ,pacjent int not null constraint fk_pac  foreign key (pacjent) references pacjenci(id)
    ,lekarz int not null constraint fk_lek foreign key (lekarz) references pracownicy(id)
    ,dataw datetime not null
    );

create table diagnoza (
	 id int primary key 
	,wizyta int not null constraint fk_w foreign key (wizyta) references wizyta(id)
    ,icd char(6) not null constraint fk_i foreign key (icd) references icd(id)
    ,diagnoza varchar(max)
    );