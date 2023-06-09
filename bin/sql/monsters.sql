CREATE TABLE MONSTERS(
    ID SERIAL,
    NAME CHARACTER VARYING(50),
    PERSONALITY CHARACTER VARYING(50)
);

CREATE TABLE HABITATS(
    ID SERIAL,
    NAME CHARACTER VARYING(50),
    CLIMATE CHARACTER VARYING(50),
    TEMPERATURE INT
);

CREATE TABLE LIVES(
    MONSTER CHARACTER VARYING(50),
    HABITAT CHARACTER VARYING(50)
);

INSERT INTO MONSTERS(
    NAME,
    PERSONALITY
) VALUES (
    'Fluffy',
    'agressive'
),
(
    'Noodles',
    'impatient'
),
(
    'Rusty',
    'passionate'
);

INSERT INTO HABITATS(
    NAME,
    CLIMATE,
    TEMPERATURE
) VALUES (
    'Desert',
    'dry',
    100
),
(
    'forest',
    'haunted',
    60
),
(
    'mountain',
    'icy',
    20
);

INSERT INTO LIVES(
    MONSTER,
    HABITAT
) VALUES (
    'Fluffy',
    'dry'
),
(
    'Noodles',
    'haunted'
),
(
    'Rusty',
    'icy'
);

CREATE TABLE WIZARDS(
    NAME CHARACTER VARYING(50),
    POWER CHARACTER VARYING(50)
);

CREATE TABLE ELVES(
    NAME CHARACTER VARYING(50),
    SPEED REAL
);

CREATE TABLE HOBBITS(
    NAME CHARACTER VARYING(50),
    PERSONALITY CHARACTER VARYING(50)
);

INSERT INTO WIZARDS(
    NAME,
    POWER
) VALUES (
    'Gandalf',
    'fireworks'
),
(
    'Sauron',
    'rings'
),
(
    'Saruman',
    'betrayal'
);