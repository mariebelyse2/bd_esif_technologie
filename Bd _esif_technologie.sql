CREATE TABLE

CREATE TABLE Clients(
    idclient INT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    numero INT,
);

insert into Clients(idclient,nom,prenom,numero),
values (1, 'Nikiema', 'Dani', 66153085 ),
       (2, 'Kabore', 'Nadia', 78562310),
       (3, 'Neemata', 'sarah', 67777370),
       (4, 'Traore', 'elvis', 75124990 );

);

CREATE TABLE Fournisseurs(
    idfournisseurs INT PRIMARY KEY not null,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    numero INT,
);

insert into Fournisseurs(idfournisseurs,nom,prenom,numero),
values (1, 'Nziza', 'Berly', 70456321 ),
       (2, 'Kaneza', 'Justin',70258796),
       (3, 'Sanare', 'sandra', 51205623 ),
       (4, 'Sawadogo', 'Jackson', 78563212 );


CREATE TABLE Catégorie(
    idcatégorie INT PRIMARY KEY not null,
    nom VARCHAR(50),
);

insert into Catégorie(idcategorie,nom),
values (1,' matériels informatique'),
       (2,' électronique'),
       (3,' électro-menage'),

CREATE TABLE articles(
    idarticle INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50)
    idcatégorie int,
    prix INT,
    
    FOREIGN KEY(idcatégorie) REFERENCES catégorie(idcatégorie)
);
 INSERT INTO articles(idcatégorie,nom,prix,)
 values (1, 'ordinateur', 250000),
        (3, 'télévision', 185000),
        (3, 'climatiseur', 475000);


CREATE TABLE ventes(
    idventes INT PRIMARY KEY not null,
    foreign key(idclient) references Clients (idclient),
    foreign key(idvente) references ventes (idvente)
);

CREATE TABLE Achats(
    idacahts INT PRIMARY KEY not null,
    foreign key(idfournisseurs) references Fournisseurs(idfournisseurs)
    foreign key(idarticle) references articles(idarticle)
)