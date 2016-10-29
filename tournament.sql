-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE TABLE players(
    id serial primary key,
    name text
);

CREATE TABLE matches(
    match serial primary key,
    round integer,
    player_1 integer references players(id),
    player_2 integer references players(id),
    winner integer references players(id)
);
