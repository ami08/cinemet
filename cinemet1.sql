#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: genre
#------------------------------------------------------------

CREATE TABLE genre(
        idgenre     Int  Auto_increment  NOT NULL ,
        description Varchar (60) NOT NULL
	,CONSTRAINT genre_PK PRIMARY KEY (idgenre)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: realisateur
#------------------------------------------------------------

CREATE TABLE realisateur(
        idrealisateur Int  Auto_increment  NOT NULL ,
        nomreal       Varchar (60) NOT NULL
	,CONSTRAINT realisateur_PK PRIMARY KEY (idrealisateur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: acteur
#------------------------------------------------------------

CREATE TABLE acteur(
        idacteur  Int  Auto_increment  NOT NULL ,
        nomacteur Varchar (60) NOT NULL
	,CONSTRAINT acteur_PK PRIMARY KEY (idacteur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: films
#------------------------------------------------------------

CREATE TABLE films(
        idfilms               Int  Auto_increment  NOT NULL ,
        titre                 Varchar (60) NOT NULL ,
        duree                 Time NOT NULL ,
        infos                 Longtext NOT NULL ,
        images                Varchar (60) NOT NULL ,
        videos                Longtext NOT NULL ,
        idgenre               Int NOT NULL ,
        idfilms_appartenance  Int NOT NULL ,
        idfilms_relact        Int NOT NULL ,
        idacteur              Int NOT NULL ,
        idfilms_relreal       Int NOT NULL ,
        idrealisateur         Int NOT NULL ,
        idgenre_appartenance  Int NOT NULL ,
        idacteur_relact       Int NOT NULL ,
        idrealisateur_relreal Int NOT NULL
	,CONSTRAINT films_PK PRIMARY KEY (idfilms)

	,CONSTRAINT films_genre_FK FOREIGN KEY (idgenre_appartenance) REFERENCES genre(idgenre)
	,CONSTRAINT films_acteur0_FK FOREIGN KEY (idacteur_relact) REFERENCES acteur(idacteur)
	,CONSTRAINT films_realisateur1_FK FOREIGN KEY (idrealisateur_relreal) REFERENCES realisateur(idrealisateur)
)ENGINE=InnoDB;

