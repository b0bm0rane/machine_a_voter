USE db_votes;

INSERT INTO candidat 
(id, nom, prenom, slogan) 
VALUES 
(1, 'MacAlpine', 'Cunégonde', "On n'est pas là pour beurrer les tartines, mais pour défendre vos intérêts"),
(2, 'Voce', 'Laïla', 'Du rire et des larmes ? Non, juste des résultats'),
(3, 'Wilacot', 'Cécilia', 'On vous fera rire... jaune'),
(4, 'Leeroyde', 'Raphaël', 'Attention, élections : ça va décoiffer'),
(5, 'Dillintone', 'Jean', 'Nous sommes des magiciens: on peut faire bouger les choses'),
(6, 'MacTrustey', 'Séverine', 'On ne vous promet pas la lune, mais on va vous donner la parole'),
(7, 'Sonner', 'Jordan', "On n'est pas toujours là, mais on est là pour vous"),
(8, 'Fowells', 'Patrick', 'Nous ne sommes pas des héros, mais on va vous sauver la mise '),
(9, 'Bartlomiej', 'Martine', 'TTC, service compris'),
(10, "O'Grada", 'John', 'Vous faire entendre raison');

INSERT INTO sessions_vote 
(id, nb_tours, nb_representants, statut) 
VALUES 
(1, 2, 10, 'active');

INSERT INTO candidat_sessions_vote 
(candidat_id, session_vote_id)
VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);