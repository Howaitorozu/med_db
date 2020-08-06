
use przychodnia; 
go

insert into panstwa values('1','Polska'),('2','Anglia'),('3','Hiszpania'),('4','Portugalia'),('5','Rosja');

insert into pacjenci values (1,'Adam','Krzyc',1,'Kraków','Stokroc','23a','515982991','99111105589')
	,(2,'Karolina','Skok',1,'Olsztyn','Kokosowa','12b/c','506091190','94121208876')
	,(3,'Kamil','Stechowiec',1,'Radom','Z³ota','35','888227190','99112208876')
	,(4,'Emil','Stone',2,'Londyn','Baker','12/c','088812928','9121208876');

insert into grupa values(1, 'A00-B99 Niektóre choroby zakaŸne i paso¿ytnicze')
	,(2,'C00-D48 Nowotwory')
	,(3,'D50-D89 Choroby krwi i narz¹dów krwiotwórczych oraz niektóre choroby przebiegaj¹ce z udzia³em mechanizmów autoimmunologicznych')
	,(4,'E00-E90 Zaburzenia wydzielania wewnêtrznego, stanu od¿ywienia i przemiany metabolicznej')
	,(5,'F00-F99 Zaburzenia psychiczne i zaburzenia zachowania')
	,(6,'G00-G99 Choroby uk³adu nerwowego')
	,(7,'H00-H59 Choroby oka i przydatków oka')
	,(8,'H60-H95 Choroby ucha i wyrostka sutkowatego')
	,(9,'I00-I99 Choroby uk³adu kr¹¿enia')
	,(10,'J00-J99 Choroby uk³adu oddechowego')
	,(11,'K00-K93 Choroby uk³adu trawiennego')
	,(12,'L00-L99 Choroby skóry i tkanki podskórnej')
	,(13,'M00-M99 Choroby uk³adu kostno-miêœniowego i tkanki ³¹cznej')
	,(14,'N00-N99 Choroby uk³adu moczowo-p³ciowego')
	,(15,'O00-O99 Ci¹¿a, poród i po³óg')
	,(16,'P00-P96 Niektóre stany rozpoczynaj¹ce siê w okresie oko³oporodowym')
	,(17,'Q00-Q99 Wady rozwojowe wrodzone, zniekszta³cenia i aberracje chromosomowe')
	,(18,'R00-R99 Objawy, cechy chorobowe oraz nieprawid³owe wyniki badañ klinicznych laboratoryjnych gdzie indziej niesklasyfikowane')
	,(19,'S00-T98 Urazy, zatrucia i inne okreœlone skutki dzia³ania czynników zewnêtrznych')
	,(20,'V01-Y98 Zewnêtrzne przyczyny zachowania i zgonu')
	,(21,'Z00-Z99 Czynniki sp³ywaj¹ce na stan zdrowia i kontakt ze slu¿b¹ zdrowia');

insert into icd values ('A00','CHOLERA',1)
	,('A01','DUR BRZUSZNY I DURY RZEKOME',1)
	,('C00','NOWOTWORY Z£OŒLIWE WARGI',2)
	,('C38','NOWOTWÓR Z£OŒLIWY SERCA, ŒRÓDPIERSIA I OP£UCNEJ',2)
	,('D50','NIEDOKRWISTOŒÆ Z NIEDOBORU ¯ELAZA',3)
	,('D51','NIEDOKRWISTOŒÆ Z NIEDOBORU WITAMINY B12',3)
	,('H60','ZAPALENIE UCHA ZEWNÊTRZNEGO',8);
 
insert into specjalizacje values(1,'lekarz')
	,(2,'pielêgniarka')
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
	,(3,2,'D51','stwierdzenie niedokrwistoœci')
	,(4,3,'D51','niedokrwistoœæ')
	,(5,4,'H60','ropieñ, stwierdzono ostre zapalenie ucha. Dalsze skierowanie do laryngologa.');