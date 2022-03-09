START TRANSACTION;

-- ============================================================
--   Suppression et création de la base de données 
-- ============================================================

DROP DATABASE IF EXISTS KGB;
CREATE DATABASE KGB;
USE KGB;

-- ============================================================
--   Création des tables                                
-- ============================================================


CREATE TABLE user (
    id                   INT NOT NULL AUTO_INCREMENT,
    pseudo               VARCHAR(255) NOT NULL,
    password             VARCHAR(255) NOT NULL,
    user_type            VARCHAR(255) NOT NULL,
    mail                 VARCHAR(255) NOT NULL,
    date_creation        DATE,
    UNIQUE KEY (mail),
    PRIMARY KEY (id)
);


-- ============================================================
--   Ajout des données                                
-- ============================================================

INSERT INTO `user`(`pseudo`, `password`, `user_type`, `mail`) VALUES ('Boris','password','user','boris@gmail.com');
UPDATE `user` SET `date_creation`= CURRENT_DATE WHERE `pseudo` = 'boris';

INSERT INTO `user`(`pseudo`, `password`, `user_type`, `mail`) VALUES ('Padanoix','carotte','admin','padanoix@gmail.com');
UPDATE `user` SET `date_creation`= CURRENT_DATE WHERE `pseudo` = 'Padanoix';
