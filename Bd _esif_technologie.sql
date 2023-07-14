

CREATE TABLE clients(
    idclient INT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    numero INT,
);

INSERT INTO clients(idclient,nom,prenom,numero),
VALUES (1, 'Nikiema', 'Dani', 66153085),
       (2, 'Kabore', 'Nadia', 78562310),
       (3, 'Neemata', 'sarah', 67777370),
       (4, 'Traore', 'elvis', 75124990),
       (5, 'Sawadogo Marie', 51026593);
);

CREATE TABLE fournisseurs(
    idfournisseurs INT PRIMARY KEY not null,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    numero INT
);

INSERT INTO Fournisseurs(idfournisseurs,nom,prenom,numero),
VALUES (1, 'Nziza', 'Berly', 70456321 ),
       (2, 'Kaneza', 'Justin',70258796),
       (3, 'Sanare', 'sandra', 51205623 ),
       (4, 'Sawadogo', 'Jackson', 78563212 ),
       (5,'keza', 'Bernice',75206146);


CREATE TABLE Categorie(
    idcategorie INT PRIMARY KEY NOT NULL,
    nom VARCHAR(50),
    FOREIGN KEY(idcategorie)REFERENCES categories,
);

INSERT INTO Catégorie(idcategorie,nom),
VALUES (1,' materiels informatique'),
       (2,' electronique'),
       (3,' electro-menage'),
       (4,' ordinateur'),
       (5,' disque dur');

CREATE TABLE articles(
    idarticle INT PRIMARY KEY NOT NULL auto_increment,
    nom VARCHAR(50),
    prix INT,
    idcategories INT 
);

 INSERT INTO articles(nom,prix,idcategories)
 VALUES ('ordinateur', 250000, 1),
        ('television', 185000, 3),
        ('climatiseur', 475000, 3),
        ('telephone', 120000, 2),
        ('cle-usb', 45000, 2);


CREATE TABLE ventes(
    idventes INT PRIMARY KEY NOT NULL auto_increment,
    nom VARCHAR (55),
    prix INT,
    idclient INT,
    idarticle INT,
    FOREIGN KEY(idclient) REFERENCES Clients (idclient),
    FOREIGN KEY(idarticle) REFERENCES articles (idarticle)
);

INSERT INTO ventes(nom,prix,idcategories)
 VALUES ('imprimante', 245000, 1),
        ('television', 85000, 3),
        ('climatiseur', 475000, 3),
        ('telephone', 120000, 2),
        ('cable', 4500, 2);
);
CREATE TABLE achats(
    idachats INT PRIMARY KEY NOT NULL auto_increment,
    nom VARCHAR(55),
    prix INT,
    idvente INT,
    idarticle INT,
    FOREIGN KEY(idventes) REFERENCES ventes (idventes),
    FOREIGN KEY(idarticle) REFERENCES articles(idarticle)
);

INSERT INTO achats(idfournisseurs, prix,idarticle)
VALUES ('imprimante', 245000, 1),
        ('television', 85000, 3),
        ('climatiseur', 475000, 3),
        ('telephone', 120000, 2),
        ('cable', 4500, 2);
);



