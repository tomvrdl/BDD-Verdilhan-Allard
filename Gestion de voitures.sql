CREATE TABLE Voitures (
    VoitureID INT PRIMARY KEY,
    Marque VARCHAR(50),
    Modele VARCHAR(50),
    Annee INT,
    Prix DECIMAL(10, 2),
    Statut VARCHAR(20)
);

INSERT INTO Voitures (VoitureID, Marque, Modele, Annee, Prix, Statut) VALUES
(1, 'Toyota', 'Corolla', 2022, 22000.00, 'Disponible'),
(2, 'Peugeot', '208', 2021, 18000.00, 'Vendu'),
(3, 'BMW', 'X5', 2023, 50000.00, 'Disponible'),
(4, 'Mercedes', 'Classe A', 2020, 30000.00, 'Vendu'),
(5, 'Audi', 'A3', 2021, 35000.00, 'Disponible'),
(6, 'Renault', 'Clio', 2020, 15000.00, 'Disponible'),
(7, 'Ford', 'Focus', 2022, 23000.00, 'Vendu'),
(8, 'Volkswagen', 'Golf', 2023, 27000.00, 'Disponible'),
(9, 'Fiat', 'Panda', 2021, 12000.00, 'Vendu'),
(10, 'Nissan', 'Qashqai', 2021, 25000.00, 'Disponible');

CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    Nom VARCHAR(100),
    Adresse VARCHAR(255),
    Telephone VARCHAR(15)
);

INSERT INTO Clients (ClientID, Nom, Adresse, Telephone) VALUES
(1, 'John Doe', '123 rue de Paris, 75000 Paris', '0123456789'),
(2, 'Jane Smith', '456 avenue des Champs, 69000 Lyon', '0987654321'),
(3, 'Alice Martin', '789 boulevard de la République, 13000 Marseille', '0147852369'),
(4, 'Paul Dupuis', '101 rue des Lilas, 33000 Bordeaux', '0169453278'),
(5, 'Marie Lefevre', '25 rue des Fleurs, 59000 Lille', '0178543921'),
(6, 'Lucie Bernard', '42 avenue de la Liberté, 67000 Strasbourg', '0178765432'),
(7, 'Claude Petit', '78 rue de la Garde, 44000 Nantes', '0156127839'),
(8, 'Éric Lefevre', '92 boulevard de la Mer, 83000 Toulon', '0189456721'),
(9, 'Sophie Roy', '54 avenue des Vignes, 14000 Caen', '0125987416'),
(10, 'Bernard Durand', '32 rue des Acacias, 75015 Paris', '0198765432');


CREATE TABLE Employes (
    EmployeID INT PRIMARY KEY,
    Nom VARCHAR(100),
    Poste VARCHAR(50),
    Telephone VARCHAR(15)
);

INSERT INTO Employes (EmployeID, Nom, Poste, Telephone) VALUES
(1, 'Pierre Dupont', 'Vendeur', '0612345678'),
(2, 'Marie Lefevre', 'Mécanicien', '0623456789'),
(3, 'Lucie Bernard', 'Responsable', '0698765432'),
(4, 'Michel Martin', 'Vendeur', '0645789312'),
(5, 'Claire Durand', 'Mécanicien', '0634567812'),
(6, 'Luc Albert', 'Responsable', '0689765432'),
(7, 'Anne Dupuis', 'Vendeur', '0656789312'),
(8, 'Jacques Moreau', 'Mécanicien', '0678934123'),
(9, 'Sophie Ménard', 'Responsable', '0665789312'),
(10, 'Bernard Lemoine', 'Vendeur', '0643657812');

CREATE TABLE Ventes (
    VenteID INT PRIMARY KEY,
    VoitureID INT,
    ClientID INT,
    EmployeID INT,
    DateVente DATE,
    FOREIGN KEY (VoitureID) REFERENCES Voitures(VoitureID),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (EmployeID) REFERENCES Employes(EmployeID)
);

INSERT INTO Ventes (VenteID, VoitureID, ClientID, EmployeID, DateVente) VALUES
(1, 1, 1, 1, '2023-06-15'),
(2, 2, 2, 2, '2023-07-20'),
(3, 3, 3, 3, '2023-08-10'),
(4, 4, 4, 4, '2023-06-25'),
(5, 5, 5, 5, '2023-07-30'),
(6, 6, 6, 6, '2023-08-05'),
(7, 7, 7, 7, '2023-06-18'),
(8, 8, 8, 8, '2023-07-12'),
(9, 9, 9, 9, '2023-08-01'),
(10, 10, 10, 10, '2023-07-22');

CREATE TABLE Reparations (
    ReparationID INT PRIMARY KEY,
    VoitureID INT,
    Description TEXT,
    DateReparation DATE,
    Cout DECIMAL(10, 2),
    FOREIGN KEY (VoitureID) REFERENCES Voitures(VoitureID)
);

INSERT INTO Reparations (ReparationID, VoitureID, Description, DateReparation, Cout) VALUES
(1, 1, 'Changement d\'huile', '2023-06-20', 120.00),
(2, 2, 'Réparation du moteur', '2023-07-25', 350.00),
(3, 3, 'Vérification des freins', '2023-08-15', 200.00),
(4, 4, 'Révision générale', '2023-06-27', 180.00),
(5, 5, 'Changement de batterie', '2023-07-18', 150.00),
(6, 6, 'Réparation de la climatisation', '2023-08-05', 300.00),
(7, 7, 'Vérification des pneus', '2023-06-30', 100.00),
(8, 8, 'Réparation de la direction', '2023-07-09', 220.00),
(9, 9, 'Révision moteur', '2023-08-02', 130.00),
(10, 10, 'Réparation de l\'échappement', '2023-07-27', 175.00);
