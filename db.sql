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
  foreign key (id_member) references  member(id)  
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


-- inser data 

INSERT INTO member (pseudo, email, date_inscription) VALUES
('player1', 'player1@gmail.com', '2023-01-01'),
('player2', 'player2@gmail.com', '2023-01-02'),
('player3', 'player3@gmail.com', '2023-01-03'),
('player4', 'player4@gmail.com', '2023-01-04'),
('player5', 'player5@gmail.com', '2023-01-05'),
('player6', 'player6@gmail.com', '2023-01-06'),
('player7', 'player7@gmail.com', '2023-01-07'),
('player8', 'player8@gmail.com', '2023-01-08'),
('player9', 'player9@gmail.com', '2023-01-09'),
('player10', 'player10@gmail.com', '2023-01-10'),
('player11', 'player11@gmail.com', '2023-01-11'),
('player12', 'player12@gmail.com', '2023-01-12'),
('player13', 'player13@gmail.com', '2023-01-13'),
('player14', 'player14@gmail.com', '2023-01-14'),
('player15', 'player15@gmail.com', '2023-01-15'),
('player16', 'player16@gmail.com', '2023-01-16'),
('player17', 'player17@gmail.com', '2023-01-17'),
('player18', 'player18@gmail.com', '2023-01-18'),
('player19', 'player19@gmail.com', '2023-01-19'),
('player20', 'player20@gmail.com', '2023-01-20');


INSERT INTO jeu (titre, studio_developpement, annee_sortie, genre, multijoueur) VALUES
('Game1', 'Studio1', 2020, 'Action', true),
('Game2', 'Studio2', 2019, 'RPG', false),
('Game3', 'Studio3', 2021, 'Adventure', true),
('Game4', 'Studio4', 2022, 'Shooter', true),
('Game5', 'Studio5', 2020, 'Puzzle', false),
('Game6', 'Studio6', 2021, 'Action', true),
('Game7', 'Studio7', 2019, 'Sports', true),
('Game8', 'Studio8', 2018, 'RPG', false),
('Game9', 'Studio9', 2022, 'Horror', false),
('Game10', 'Studio10', 2021, 'Simulation', true),
('Game11', 'Studio11', 2020, 'Shooter', true),
('Game12', 'Studio12', 2019, 'Adventure', false),
('Game13', 'Studio13', 2022, 'Puzzle', true),
('Game14', 'Studio14', 2021, 'RPG', true),
('Game15', 'Studio15', 2022, 'Action', false),
('Game16', 'Studio16', 2021, 'Sports', true),
('Game17', 'Studio17', 2020, 'Adventure', true),
('Game18', 'Studio18', 2022, 'Horror', false),
('Game19', 'Studio19', 2019, 'Simulation', false),
('Game20', 'Studio20', 2021, 'Shooter', true);

INSERT INTO emprunter (date_emprunt, date_retour_prevue, date_reelle , id_jeu, id_member) VALUES
( '2023-01-01', '2023-01-15', '2023-01-12', 5, 11),
( '2023-02-01', '2023-02-15', '2025-02-12', 11, 13),
( '2023-03-01', '2023-03-15', '2023-03-12', 10, 4),
( '2023-04-01', '2023-04-15', '2023-04-12', 10, 11),
( '2023-05-01', '2023-05-15', '2023-05-12', 12, 11),
( '2023-06-01', '2023-06-15', '2023-06-12', 12, 6),
( '2023-07-01', '2023-07-15', '2023-07-12', 5, 6),
( '2023-08-01', '2023-08-15', '2023-08-12', 11, 4),
( '2023-09-01', '2023-09-15', '2025-09-12', 6, 13),
( '2023-10-01', '2023-10-15', '2023-10-12', 12, 6),
( '2023-11-01', '2023-11-15', '2023-11-12', 9, 13),
( '2023-12-01', '2023-12-15', '2025-12-12', 9, 14),
( '2024-01-01', '2024-01-15', '2024-12-23', 16, 14),
( '2024-02-01', '2024-02-15', '2024-02-12', 20, 19),
( '2024-03-01', '2024-03-15', '2024-03-12', 18, 16),
( '2024-04-01', '2024-04-15', '2024-04-12', 18, 16),
( '2024-05-01', '2024-05-15', '2024-05-12', 8, 11),
( '2024-06-01', '2024-06-15', '2024-06-12', 10, 10),
( '2024-07-01', '2024-07-15', '2024-07-12', 19, 7),
( '2024-08-01', '2024-08-15', '2024-08-12', 12, 10);

INSERT INTO abonnement (type_abonnement, date_debut, date_fin, id_member) VALUES
( 'Mensuel', '2023-01-01', '2023-01-31', 8),
( 'Annuel', '2023-02-01', '2024-01-31', 12),
( 'Mensuel', '2023-03-01', '2023-03-31', 12),
('Annuel', '2023-05-01', '2024-04-30', 16),
('Mensuel', '2023-06-01', '2023-06-30', 3),
('Mensuel', '2023-04-01', '2023-04-30', 4),
('Annuel', '2023-07-01', '2024-06-30', 11),
('Mensuel', '2023-08-01', '2023-08-31', 13),
('Mensuel', '2023-09-01', '2023-09-30', 15),
('Annuel', '2023-10-01', '2024-09-30', 16),
('Mensuel', '2023-11-01', '2023-11-30', 9),
('Annuel', '2023-12-01', '2024-11-30', 12),
('Mensuel', '2024-01-01', '2024-01-31', 8),
('Annuel', '2024-02-01', '2025-01-31', 16),
('Mensuel', '2024-03-01', '2024-03-31', 13),
('Mensuel', '2024-04-01', '2024-04-30', 13),
('Annuel', '2024-05-01', '2025-04-30', 15),
('Mensuel', '2024-06-01', '2024-06-30', 14),
('Annuel', '2024-07-01', '2025-06-30', 11),
('Mensuel', '2024-08-01', '2024-08-31', 14);

INSERT INTO tournoi (nom_tournoi, date_tournoi, recompenses , id_jeu) VALUES
('Tournoi Action', '2023-03-01', '1000$', 7),
('Tournoi RPG', '2023-04-15', '500$' ,4),
('Tournoi Adventure', '2023-05-10', '800$', 3),
('Tournoi Shooter', '2023-06-05', '1200$', 2),
('Tournoi Puzzle', '2023-07-20', '300$', 12),
('Tournoi Sports', '2023-08-25', '1000$', 17),
('Tournoi Horror', '2023-10-10', '900$', 5)
('Tournoi Grand', '2024-10-01', '2000$', 4);

INSERT INTO participer (score, rang_final,id_member,id_tournoi) VALUES
(89.5, 1,1,1),
(76.0, 2, 2 , 8),
(92.3, 1,4,6),
(68.9, 3,13,5),
(84.4, 2, 17, 5),
(71.2, 4, 11,2),
(95.0, 1, 11 , 3),
(80.3, 2, 12 , 5),
(65.7, 5, ),
(90.1, 1,14, 3),
(77.4, 3, 14, 4),
(88.0, 2,11 ,4),
(94.5, 1, 11, 2),
(73.8, 4, 13, 1),
(67.0, 5,14, 1),
(85.9, 2, 11, 4),
(82.1, 3, 12, 5),
(93.2, 1, 17, 5),
(74.5, 4,8, 5),
(88.7, 2,12, 5);