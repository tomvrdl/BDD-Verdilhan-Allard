# Système de gestion de voitures pour une concession automobile

Ce projet est un système de gestion de voitures destiné à une concession automobile en sql. Il permet de gérer l'inventaire des voitures, les informations des clients, les ventes réalisées, les employés et les réparations effectuées.

## Fonctionnalités principales

- **Gestion de l'inventaire des voitures** : Suivi des informations sur chaque voiture en stock (marque, modèle, année, prix, statut).
- **Gestion des clients** : Enregistrement des informations des clients intéressés ou ayant acheté une voiture.
- **Enregistrement des ventes** : Suivi des transactions de vente, avec les détails de la voiture, du client et de l'employé.
- **Gestion des employés** : Suivi des informations sur les employés de la concession.
- **Suivi des réparations** : Enregistrement des réparations effectuées sur les voitures.

## Schéma relationnel

Le projet repose sur cinq tables principales dans la base de données :

1. **Voitures** : Informations sur les voitures (ID, marque, modèle, année, prix, statut).
2. **Clients** : Informations sur les clients (ID, nom, adresse, téléphone).
3. **Employes** : Informations sur les employés (ID, nom, poste, téléphone).
4. **Ventes** : Détails des ventes réalisées (ID vente, ID voiture, ID client, ID employé, date de vente).
5. **Réparations** : Informations sur les réparations effectuées sur les voitures (ID réparation, ID voiture, description, coût, date).

## Installation

1. Télécharger le contenu en zip, tout extraire et suivre le word :
