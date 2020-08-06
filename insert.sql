
use przychodnia; 
go

insert into panstwa values('1','Polska'),('2','Anglia'),('3','Hiszpania'),('4','Portugalia'),('5','Rosja');

insert into pacjenci values (1,'Adam','Krzyc',1,'Krak�w','Stokroc','23a','515982991','99111105589')
	,(2,'Karolina','Skok',1,'Olsztyn','Kokosowa','12b/c','506091190','94121208876')
	,(3,'Kamil','Stechowiec',1,'Radom','Z�ota','35','888227190','99112208876')
	,(4,'Emil','Stone',2,'Londyn','Baker','12/c','088812928','9121208876');

insert into grupa values(1, 'A00-B99 Niekt�re choroby zaka�ne i paso�ytnicze')
	,(2,'C00-D48 Nowotwory')
	,(3,'D50-D89 Choroby krwi i narz�d�w krwiotw�rczych oraz niekt�re choroby przebiegaj�ce z udzia�em mechanizm�w autoimmunologicznych')
	,(4,'E00-E90 Zaburzenia wydzielania wewn�trznego, stanu od�ywienia i przemiany metabolicznej')
	,(5,'F00-F99 Zaburzenia psychiczne i zaburzenia zachowania')
	,(6,'G00-G99 Choroby uk�adu nerwowego')
	,(7,'H00-H59 Choroby oka i przydatk�w oka')
	,(8,'H60-H95 Choroby ucha i wyrostka sutkowatego')
	,(9,'I00-I99 Choroby uk�adu kr��enia')
	,(10,'J00-J99 Choroby uk�adu oddechowego')
	,(11,'K00-K93 Choroby uk�adu trawiennego')
	,(12,'L00-L99 Choroby sk�ry i tkanki podsk�rnej')
	,(13,'M00-M99 Choroby uk�adu kostno-mi�niowego i tkanki ��cznej')
	,(14,'N00-N99 Choroby uk�adu moczowo-p�ciowego')
	,(15,'O00-O99 Ci��a, por�d i po��g')
	,(16,'P00-P96 Niekt�re stany rozpoczynaj�ce si� w okresie oko�oporodowym')
	,(17,'Q00-Q99 Wady rozwojowe wrodzone, zniekszta�cenia i aberracje chromosomowe')
	,(18,'R00-R99 Objawy, cechy chorobowe oraz nieprawid�owe wyniki bada� klinicznych laboratoryjnych gdzie indziej niesklasyfikowane')
	,(19,'S00-T98 Urazy, zatrucia i inne okre�lone skutki dzia�ania czynnik�w zewn�trznych')
	,(20,'V01-Y98 Zewn�trzne przyczyny zachowania i zgonu')
	,(21,'Z00-Z99 Czynniki sp�ywaj�ce na stan zdrowia i kontakt ze slu�b� zdrowia');

insert into icd values ('A00','CHOLERA',1)
	,('A01','DUR BRZUSZNY I DURY RZEKOME',1)
	,('C00','NOWOTWORY Z�O�LIWE WARGI',2)
	,('C38','NOWOTW�R Z�O�LIWY SERCA, �R�DPIERSIA I OP�UCNEJ',2)
	,('D50','NIEDOKRWISTO�� Z NIEDOBORU �ELAZA',3)
	,('D51','NIEDOKRWISTO�� Z NIEDOBORU WITAMINY B12',3)
	,('H60','ZAPALENIE UCHA ZEWN�TRZNEGO',8);
 
insert into specjalizacje values(1,'lekarz')
	,(2,'piel�gniarka')
	,(3,'rejestracja');

insert into pracownicy values(1,'Adam','Motyka',1)
	,(2,'Agnieszka','Malec',1)
	,(3,'Krystian','Chol',1)
	,(4,'Matylda','Neuer',2)
	,(5,'Tomasz','Krzys',3);
	

insert into lekarze values (1,'rodzinny')
	,(2,'pediatra')
	,(3,'laryngolog');

insert into wizyta values (1,1,1,'2019-09-09 13:20:00')
	,(2,2,1,'2019-09-09 14:20:00')
	,(3,3,2,'2019-10-11 15:00:00')
	,(4,4,1,'2019-11-25 16:35:00');

insert into diagnoza values (1,1,'A01','bez komentarza')
	,(2,1,'C00', 'ocena wycinka ze zmiany chorobowej, stwierdzenie choroby...')
	,(3,2,'D51','stwierdzenie niedokrwisto�ci')
	,(4,3,'D51','niedokrwisto��')
	,(5,4,'H60','ropie�, stwierdzono ostre zapalenie ucha. Dalsze skierowanie do laryngologa.');