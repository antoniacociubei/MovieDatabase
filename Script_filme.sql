CREATE TABLE Persoana(
	id_persoana INT(5) NOT NULL ,
	nume VARCHAR(50) NOT NULL,
	adresa VARCHAR(100) NOT NULL,
	email VARCHAR(50) NOT NULL,
	sex CHAR(1) NOT NULL,
	data_nasterii DATE NOT NULL,
	castig_net VARCHAR(50),
	moneda CHAR(10)
);

CREATE TABLE Studio(
	nume VARCHAR(50) NOT NULL,
	adresa VARCHAR(100) NOT NULL,
	id_presedinte INT(5) NOT NULL 
);

CREATE TABLE Film(
	titlu VARCHAR(50) NOT NULL,
	an INT(4) NOT NULL,
	durata VARCHAR(10) NOT NULL,
	gen CHAR(10) NOT NULL,
	studio VARCHAR(50) NOT NULL,
 	id_producator INT(5) NOT NULL
 );

CREATE TABLE Distributie(
	titlu_film VARCHAR(50) NOT NULL,
	an_film INT(4) NOT NULL,
	id_actor INT(5) NOT NULL	
);

ALTER TABLE Persoana ADD CONSTRAINT PK_pers PRIMARY KEY (id_persoana);
ALTER TABLE Persoana ADD CONSTRAINT CHK_sex CHECK (sex IN ('M','F'));

ALTER TABLE Studio ADD CONSTRAINT PK_studio PRIMARY KEY (nume);
ALTER TABLE Studio ADD CONSTRAINT FK_pers_pr FOREIGN KEY (id_presedinte) REFERENCES Persoana(id_persoana) ON DELETE CASCADE;

ALTER TABLE Film ADD CONSTRAINT PK_film_an PRIMARY KEY (titlu,an);
ALTER TABLE Film ADD CONSTRAINT FK_studio FOREIGN KEY (studio) REFERENCES Studio(nume) ON DELETE CASCADE;
ALTER TABLE Film ADD CONSTRAINT FK_pers_prod FOREIGN KEY (id_producator ) REFERENCES Persoana(id_persoana) ON DELETE CASCADE;
ALTER TABLE Film ADD CONSTRAINT CHK_gen CHECK (gen IN ('drama','comedie','SF','copii'));

ALTER TABLE Distributie ADD CONSTRAINT PK_film_actor PRIMARY KEY (titlu_film,an_film,id_actor);
ALTER TABLE Distributie ADD CONSTRAINT FK_pers_act FOREIGN KEY(id_actor) REFERENCES Persoana(id_persoana) ON DELETE CASCADE;
ALTER TABLE Distributie ADD CONSTRAINT FK_film_titlu_an FOREIGN KEY (titlu_film, an_film) REFERENCES Film(titlu, an) ON DELETE CASCADE;

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (15,'Sophie Nélisse','10818 W, Hortense St, Toluca Lake, CA‎','sophie.ness@withstars.com','F',STR_TO_DATE('03-27-2000','%m-%d-%Y'), 40000, 'USD');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (1123,'Karen Rosenfelt','212 Rey St, San Francisco, CA‎','karentheproducer@withstars.com','F',STR_TO_DATE('05-05-1967','%m-%d-%Y'), 80000, 'USD');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda)
VALUES (1011, 'Steve Asbel', '6736 S Sherbourne Dr, Los Angeles, CA', 'steve@foxstd.com', 'M',STR_TO_DATE('09-22-1965','%m-%d-%Y'), 500000, 'USD');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda)
VALUES (2021, 'Donald J. Hall Jr.', '145 Valle Lindo St, Malibu, CA', 'donald_hall@hallmark.com','M', STR_TO_DATE('01-17-1950','%m-%d-%Y'), 90000, 'USD');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (12,'Geoffrey Rush','5723 Morgan Ave, Los Angeles, CA','georush@foxacting.com','M',STR_TO_DATE('07-06-1951','%m-%d-%Y') ,350000, 'USD');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (2203,'Ron Oliver','216 Eddy St, San Francisco, CA','ronny@hallmarkteam.com','M',STR_TO_DATE('02-03-1978','%m-%d-%Y'), 650000, 'USD');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (23,'Ryan Paevey','205 Georgina Ave, Santa Monica, CA','ryan.pvy@contact.com','M',STR_TO_DATE('09-24-1984','%m-%d-%Y'), 100000, 'USD');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (21,'Erin Cahill','1627 Brooke Rd, Stafford, VA','erin.cahill@contact.com','F',STR_TO_DATE('01-04-1980','%m-%d-%Y'), 150000, 'USD');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (16,'Keira Knightley','159 Wardour St, London, W1F 8WH','keria.knightley@contactme.com','F',STR_TO_DATE('05-26-1985','%m-%d-%Y'), 10000,'GBP');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (18,'Matthew Macfadyen','389 Ormeau Rd, Belfast, BT7 3GP','macfadyen@contactme.com','M',STR_TO_DATE('10-17-1974','%m-%d-%Y'), 15000,'GBP');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (1166,'Tim Bevan','116 Plover Way, London, SE16 7TZ','timtheproducer@contact.com','M',STR_TO_DATE('12-20-1957','%m-%d-%Y'), 190000,'GBP');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda)
VALUES (2012,'Maxime Saada','54  Faubourg Saint Honoré,Paris,Île-de-France','maxime@studiocanalstaff.com','M',STR_TO_DATE('10-26-1955','%m-%d-%Y'), 10000, 'GBP');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (27,'Lexi Giovagnoli','210 Diamond St, Ashland, OH','lexi.giovagnoli@connect.com','F',STR_TO_DATE('07-17-1991','%m-%d-%Y'), 200000,'USD');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (2210,'Michael Kampa','1873 Middleton Pl,Los Angeles, CA','michaelkampa@gmail.com','M',STR_TO_DATE('08-17-1987','%m-%d-%Y'), 700000, 'USD');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (3230,'Ramsey Ann Naito','4517 Logan Ave, San Diego, CA','ann.naito@dreamon.com','F',STR_TO_DATE('11-11-1974','%m-%d-%Y'), 450000, 'USD');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (3313,'Jeffrey Katzenberg','4410 Saint Nicholas Ave, New York, NY','jeffrey.katze.com','M',STR_TO_DATE('12-21-1950','%m-%d-%Y'), 900000, 'USD');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (39,'Alec Baldwin','2728 Thomson Ave #606, Long Island, NY','alec_baldwin@dreamon.com','M',STR_TO_DATE('04-03-1958','%m-%d-%Y'), 630000, 'USD');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (31,'Jimmy Kimmel','360 Smith St, Brooklyn, NY','jimmy.Kimmel@dreamon.com','M',STR_TO_DATE('11-13-1967','%m-%d-%Y'), 700000, 'USD');


Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (3222,'Chris Meledandri','395 W End Ave,New York, NY','chris@illumination.com','M',STR_TO_DATE('05-15-1959','%m-%d-%Y'), 82000, 'USD');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (33,'Sandra Bullock','1118 Richmond Dr, Stafford, VA','sandra.bullock@contact.com','F',STR_TO_DATE('07-26-1954','%m-%d-%Y'), 96000, 'USD');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (34,'Allison Janney','13 Lee St, Shelby, OH','allison.janney@contact.com','F',STR_TO_DATE('05-10-1971','%m-%d-%Y'), 270000, 'USD');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (5511,'Ann Sarnoff','179 Tremont St, Rehoboth, MA','sarnoff.ann@warnerbros.com','F',STR_TO_DATE('11-02-1961','%m-%d-%Y'), 1700000, 'USD');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (11,'Hal B. Wallis','3897 Rambla Orienta St, Malibu, CA','hall_wallis@warnerbros.com','M',STR_TO_DATE('10-08-1971','%m-%d-%Y'), 620000, 'USD');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (22,'Humphrey Bogart','145 Valle Lindo St, Malibu, CA','humphrey.bogart@warnerbros.com','M',STR_TO_DATE('12-25-1899','%m-%d-%Y'), 930000, 'USD');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (17,' David Jackson','9787 Blantyre Dr, Beverly Hills, CA','david.jackson@hallmarkproductions.com','M',STR_TO_DATE('09-22-1959','%m-%d-%Y'), 100000, 'USD');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (25,'Jen Lilley','51 Treasure Ky, Hamptonu, VA','jenlilley@acting.com','F',STR_TO_DATE('08-04-1984','%m-%d-%Y'), 50000, 'USD');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (75,'Adela Ilarie','CAL. CISNĂDIEI nr. 12, SIBIU,SB, RO','adela_ilarie@yahoo.com','F',STR_TO_DATE('09-29-1984','%m-%d-%Y'), 5900000, 'RON');
Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (77,'Mihai Petrovici','Strada Marasesti 77, Cluj-Napoca, CJ,RO','mihai_petro@yahoo.com','M',STR_TO_DATE('01-07-1980','%m-%d-%Y'), 5750000, 'RON');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (8877,'Alan Bergman','565 N Lincoln Ave, Beverly Hills, CA','al.bergam@disneystudios.com','M',STR_TO_DATE('07-07-1971','%m-%d-%Y'), 3000000, 'USD');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (8890,'Don Hahn','1001 Allen Ave, West Chicago, IL','don_hahn@disneystudios.com','M',STR_TO_DATE('11-04-1955','%m-%d-%Y'), 770000, 'USD');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (8891,'Jonathan Favreau','1703 Forest Lakes Ave SE, Atlanta, GA','jon.favreau@disneystudios.com','M',STR_TO_DATE('08-27-1962','%m-%d-%Y'), 690000, 'USD');

Insert into Persoana(id_persoana, nume, adresa, email, sex,data_nasterii,castig_net,moneda) 
VALUES (8892,'Peter Vech', '9668 Rainier Ave S, Seattle, WA','peter.vecho@disneystudios.com','M',STR_TO_DATE('04-25-1958','%m-%d-%Y'), 770000, 'USD');
	



Insert into Studio(nume, adresa, id_presedinte) VALUES ('20th Century Fox', '0201 West Pico Boulevard,Central City, Los Angeles, CA‎', 1011);
Insert into Studio(nume, adresa, id_presedinte) VALUES ('Hallmark', '12700 Ventura Blvd, Studio City, Los Angeles, CA', 2021);
Insert into Studio(nume, adresa, id_presedinte) VALUES ('StudioCanal', '106  Place de la Madeleine, Paris, Île-de-France', 2012);
Insert into Studio(nume, adresa, id_presedinte) VALUES ('DreamWorks Animation', '1000 Flower Street, Glendale, CA', 3313);
Insert into Studio(nume, adresa, id_presedinte) VALUES ('Illumination Entertainment', '726 Delaware Ave, Santa Monica, CA', 3222);
Insert into Studio(nume, adresa, id_presedinte) VALUES ('Warner Bros.', '7535 Whitsett Ave #5, North Hollywood, CA', 5511);
Insert into Studio(nume, adresa, id_presedinte) VALUES ('Disney', '3110 W Burbank Blvd,Burbank, CA', 8877);



Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('Barry', 2018, 130, 'drama', '20th Century Fox', 1123);
Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('A Timeless Christmas', 2020, 85, 'comedie','Hallmark', 2203);
Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('Pride & Prejudice', 2005, 127, 'drama', 'StudioCanal', 1166);
Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('Pride & Prejudice', 2019, 95, 'comedie', 'Hallmark', 2210);

Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('The Baby Boss', 2017, 97, 'copii', 'DreamWorks Animation', 3230);
Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('Minions', 2015, 91, 'copii', 'Illumination Entertainment', 3222);
Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('Moby Dick ', 1988, 180, 'SF', '20th Century Fox', 1123);
Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('My Life as a Fairy Tale', 2013, 130, 'SF', 'DreamWorks Animation', 3230);
Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('Alice in Wonderland ', 1999, 180, 'SF', '20th Century Fox', 1123);
Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('20,000 Leagues Under the Sea', 1997, 189, 'SF', '20th Century Fox', 1123);
Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('Bohemian Rhapsody', 2018, 135, 'comedie', 'Hallmark', 2210);

Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('The Spirit of Christmas', 2018, 90, 'comedie', 'Hallmark', 17);
Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('Crangul de Liliac', 1998, 140, 'drama', 'Hallmark', 2203);

Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('Beauty and the Beast', 1991, 84, 'copii', 'Disney', 8890);
Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('The Lion King', 1998, 90, 'copii', 'Disney', 8890);
Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('The Lion King', 2019, 95, 'copii', 'Disney', 8891);
Insert into Film(titlu, an, durata, gen, studio, id_producator) VALUES ('Frozen', 2013, 102, 'copii', 'Disney', 8892);


Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('Barry', 2018, 15);
Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('Barry', 2018, 12);

Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('A Timeless Christmas', 2020, 23);
Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('A Timeless Christmas', 2020, 21);

Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('Pride & Prejudice', 2005, 16);
Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('Pride & Prejudice', 2005, 18);
Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('Pride & Prejudice', 2019, 27);
Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('The Baby Boss', 2017, 39);
Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('The Baby Boss', 2017, 31);

Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('Minions', 2015, 33);
Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('Minions', 2015, 34);

Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('The Spirit of Christmas', 2018, 23);
Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('The Spirit of Christmas', 2018, 25);
Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('Crangul de Liliac', 1998, 75);
Insert into Distributie(titlu_film, an_film, id_actor) VALUES ('Crangul de Liliac', 1998, 77);
