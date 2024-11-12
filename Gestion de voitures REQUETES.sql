/*TROIS REQUETES*/

/*Première requête*/
UPDATE Voitures
SET Prix = 24000.00
WHERE VoitureID = 1;

/*Deuxième requête*/
DELETE FROM Reparations
WHERE ReparationID = 2;

/*Troisième requête*/
UPDATE Clients
SET Telephone = '0998765432'
WHERE ClientID = 2;

/*SEPT REQUETES*/

/*Première requête*/
SELECT * 
FROM `Voitures` 
WHERE `Statut` = "Disponible"

/*Deuxième requête*/
SELECT COUNT(*)
FROM `Voitures` 
WHERE `Statut` = "Disponible"

/*Troisième requête*/
SELECT `VoitureID`,`Description`,`ReparationID`
FROM `Reparations`
WHERE `VoitureID`= "3"

/*Quatrième requête*/
SELECT Ventes.VenteID, Voitures.Marque, Voitures.Modele,Clients.Nom,Ventes.DateVente 
FROM `Ventes` 
JOIN Voitures ON Ventes.VoitureID = Voitures.VoitureID
JOIN Clients ON Ventes.ClientID = Clients.ClientID
WHERE YEAR(Ventes.DateVente) = 2023

/*Cinquième requête*/
SELECT AVG(Prix) 
FROM `Voitures`
JOIN Ventes ON Voitures.VoitureID = Ventes.VoitureID
WHERE YEAR(Ventes.DateVente) = 2023

/*Sixième requête*/
SELECT Employes.Nom, Voitures.Marque, Voitures.Modele
FROM `Employes`
JOIN Ventes ON Employes.EmployeID = Ventes.EmployeID
JOIN Voitures ON Ventes.VoitureID = Voitures.VoitureID

/*Septième requête*/
SELECT Clients.Nom, COUNT(Ventes.VenteID)
FROM `Clients`
JOIN Ventes ON Clients.ClientID = Ventes.ClientID
GROUP BY Clients.ClientID