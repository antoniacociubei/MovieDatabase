--3a)
CREATE  PROCEDURE `FilmeCopiiOrdonate`(IN `gen_cautat` VARCHAR(10)) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER 
BEGIN 
SELECT * FROM Film WHERE gen=gen_cautat ORDER BY an, titlu;
END

--5a)
CREATE PROCEDURE `Actrita`() NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER 
BEGIN 
SELECT nume FROM Persoana WHERE SEX='F'
 AND castig_net<=ALL(SELECT castig_net FROM Persoana WHERE id_persoana IN (SELECT id_actor FROM Distributie));
END

--6a)
CREATE PROCEDURE `NumarFilme`(IN `gen_cautat` VARCHAR(10)) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER 
BEGIN
SELECT id_producator, COUNT(titlu) AS "Numar filme produse" 
FROM Film WHERE gen=gen_cautat 
GROUP BY id_producator;
END

