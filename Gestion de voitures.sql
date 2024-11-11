USE verdilhan_allard_projetbdd;

CREATE TABLE Voitures (
    VoitureID INT PRIMARY KEY,
    Marque VARCHAR(50),
    Modele VARCHAR(50),
    Annee INT,
    Prix DECIMAL(10, 2),
    Statut VARCHAR(20)
);

CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    Nom VARCHAR(100),
    Adresse VARCHAR(255),
    Telephone VARCHAR(15)
);

CREATE TABLE Employes (
    EmployeID INT PRIMARY KEY,
    Nom VARCHAR(100),
    Poste VARCHAR(50),
    Telephone VARCHAR(15)
);

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

CREATE TABLE Reparations (
    ReparationID INT PRIMARY KEY,
    VoitureID INT,
    Description TEXT,
    DateReparation DATE,
    Cout DECIMAL(10, 2),
    FOREIGN KEY (VoitureID) REFERENCES Voitures(VoitureID)
);
