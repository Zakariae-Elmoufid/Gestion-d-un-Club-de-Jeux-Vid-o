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


-- Lister les membres ayant participé à un tournoi, avec leur pseudo, le nom du tournoi, et leur rang final.

SELECT member.pseudo, tournoi.nom_tournoi, participer.rang_final
    
FROM participer
INNER JOIN 
    member ON participer.id_member = member.id
INNER JOIN 
    tournoi ON participer.id_tournoi= tournoi.id


-- Trouver les membres qui ont souscrit à un abonnement annuel.


select  *
from member 
LEFT join abonnement on abonnement.id_member = member.id 
where abonnement.type_abonnement = "Annuel";
).

-- Trouver les jeux empruntés par un membre spécifique (via son pseudo).

select member.pseudo , jeu.titre
from emprunter
inner  join member on emprunter.id_member = member.id
inner  join jeu on emprunter.id_jeu = jeu.id
where member.pseudo = "player11";

-- Afficher la liste des membres et le type d'abonnement auquel ils sont associés.


select member.pseudo , jeu.titre ,jeu.studio_developpement
from emprunter
inner  join member on emprunter.id_member = member.id
inner  join jeu on emprunter.id_jeu = jeu.id

-- Afficher la liste des membres et le type d'abonnement auquel ils sont associés.


select  * , abonnement.type_abonnement
from member 
inner  join abonnement on abonnement.id_member = member.id
