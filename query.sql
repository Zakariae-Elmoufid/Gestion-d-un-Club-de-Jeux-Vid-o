-- Lister les informations de tous les membres (pseudo, e-mail, date d'inscription).


select SELECT * FROM member ;


-- Afficher la liste des jeux disponibles, avec leur titre, genre, et studio de développement.

SELECT titre , genre , studio_developpement
FROM jeu ;

-- Afficher les détails d'un tournoi spécifique à partir de son nom.

SELECT * 
FROM tournoi WHERE nom_tournoi = 'Tournoi Shooter';


-- Lister les emprunts en cours, incluant le pseudo du membre et le titre du jeu.



SELECT  jeu.titre,  member.pseudo, emprunter.date_reelle 
FROM  emprunter
INNER JOIN 
    member ON emprunter.id_member = member.id
INNER JOIN 
    jeu ON emprunter.id_jeu = jeu.id
WHERE 
    emprunter.date_reelle > CURRENT_DATE();




