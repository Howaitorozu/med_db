use przychodnia;
go
--Ilu pacjent�w mia� poszczeg�lny lekarz?
--w jednej tabelce:
select count(pacjent)as 'ilo�� pacjent�w',l.nazwa as 'kt�ry lekarz'  from wizyta w join lekarze l on w.lekarz=l.id where lekarz=1 or lekarz=2 or lekarz=3 group by nazwa

--ka�dy osobno
select count(pacjent) as 'ilo�� pacjent�w pediatry' from wizyta w where lekarz=1;
select count(pacjent) as 'ilo�� pacjent�w pediatry' from wizyta w where lekarz=2;
select count(pacjent) as 'ilo�� pacjent�w lekarza laryngologa' from wizyta w where lekarz=3;

--ilo�� pacjent�w w jednej tabeli pogrupowane wdg lekarza
select l.nazwa as 'lekarz', count(pacjent) as 'ilo�� pacjent�w' from wizyta w inner join pracownicy p on p.id=w.lekarz inner join lekarze l on
l.id=p.id group by l.nazwa;


--Czy jest lekarz, kt�ry nie przyj�� �adnego pacjenta?
SELECT l.nazwa AS 'lekarz, kt�ry nie mia� pacjenta' FROM lekarze l join pracownicy p ON p.id=l.id WHERE p.id not in(SELECT lekarz FROM wizyta);
--2 spos�b
SELECT l.nazwa FROM lekarze l LEFT JOIN wizyta w ON l.id = w.lekarz  WHERE w.lekarz IS NULL

--ile os�b zachorowa�o na poszczeg�ln� chorob� (np.D51) od pa�dziernika do listopada 2019
select count(d.id) as 'ilo�� chorych na niedokrwisto��' from diagnoza d inner join wizyta w on d.wizyta=w.id where d.icd ='D51' and w.dataw between '2019-10-10' and '2019-11-11';
select count(d.id) as 'ilo�� chorych' from diagnoza d inner join wizyta w on d.wizyta=w.id where d.icd ='D51' and w.dataw between '2019-10-10' and '2019-11-11';

--ile os�b zachorowa�o na poszczegb�ln� chorob� pomi�dzy 2019-10-01 a 2019-12-01
select icd.nazwa, count(d.id) as ile_osob
from diagnoza d join icd on d.icd=icd.id join wizyta w on w.id=d.wizyta
where w.dataw  between '2019-10-01' and '2019-12-01' 
group by icd.nazwa
order by row_number() over (partition by icd.nazwa order by count(d.id) desc);  

--ile os�b zachorowa�o na poszczegb�ln� chorob�
select icd.id, icd.nazwa, count(d.id) as ile_osob
from diagnoza d join icd on d.icd=icd.id join wizyta w on w.id=d.wizyta
group by icd.id,icd.nazwa
order by row_number() over (partition by icd.nazwa order by count(d.id) desc);  