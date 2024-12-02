
CREATE TABLE Groupe (
    id INT PRIMARY KEY,
    nom VARCHAR(50)
);

CREATE TABLE Professeur (
    id INT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    domaine VARCHAR(100)
);

CREATE TABLE Cours (
    id INT PRIMARY KEY,
    intitule VARCHAR(100),
    coefficient INT,
    professeur_id INT,
    FOREIGN KEY (professeur_id) REFERENCES Professeur(id)
);

CREATE TABLE Eleve (
    matricule INT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    date_naissance DATE,
    groupe_id INT,
    FOREIGN KEY (groupe_id) REFERENCES Groupe(id)
);

CREATE TABLE Note (
    eleve_id INT,
    cours_id INT,
    valeur FLOAT,
    PRIMARY KEY (eleve_id, cours_id),
    FOREIGN KEY (eleve_id) REFERENCES Eleve(matricule),
    FOREIGN KEY (cours_id) REFERENCES Cours(id)
);

-- Insertion de données fictives
INSERT INTO Groupe (id, nom) VALUES (1, 'Groupe A'), (2, 'Groupe B');
INSERT INTO Professeur (id, nom, prenom, domaine) VALUES (1, 'Sall', 'Adiara', 'Mathématiques'), (2, 'Mariata', 'Dia', 'Informatique'), (3, 'Sow', 'ramata', 'Physique');
INSERT INTO Cours (id, intitule, coefficient, professeur_id) VALUES (1, 'EPS', 3, 1), (2, 'physique', 4, 2), (3, 'svt', 2, 3), (4, 'arabe', 2, 3);
INSERT INTO Eleve (matricule, nom, prenom, date_naissance, groupe_id) VALUES (1, 'dakar77', 'avc', '2001-11-02', 1), (2, 'dkr', 'adiara', '2001-02-02', 1), (3, 'mauritanie', 'mariame', '2007-03-04', 2), (4, 'messi', 'Ama', '2003-04-04', 2), (5, 'mami', 'vivi', '2005-12-5', 1);
INSERT INTO Note (eleve_id, cours_id, valeur) VALUES (1, 1, 15.5), (2, 2, 14.0), (3, 3, 18.0), (4, 4, 13.5), (5, 1, 19.0);
