create table member (
    id int auto_increment primary key,
    pseudo varchar(50) UNIQUE,
    email varchar(50),
    date_inscription date
);
create table jeu (
   id int auto_increment primary key,
   titre varchar(50),
   studio_developpement varchar(50),
   annee_sortie year ,
   genre varchar(50),
   multijoueur boolean
);
create table emprunter (
  id int auto_increment primary key,
  date_emprunt varchar(50),
  date_retour_prevue varchar(50),
  date_reelle  varchar(50),
  id_jeu int ,
  id_member int,
  foreign key (id_jeu) references jeu(id),
  foreign key (id_member) references member(id)  
);
create table abonnement (
  id int auto_increment primary key,
  type_abonnement varchar(50),
  date_debut varchar(50),
  date_fin varchar(50),
  id_member int ,
  foreign key (id_member) references  abonnement(id)  
);

create table tournoi (
    id int auto_increment primary key,
    nom_tournoi varchar(50),
    date_tournoi varchar(50),
    recompenses  varchar(50),
    id_jeu int,
    foreign key (id_jeu) references jeu(id)
);

create table participer (
  id int auto_increment primary key,
  score float,
  rang_final int,
  id_member int ,
  id_tournoi int,
  foreign key (id_member) references member(id),
  foreign key (id_tournoi) references tournoi(id) 
)