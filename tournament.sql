-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Checks to see if database already exists
DROP DATABASE IF EXISTS tournament;
-- Create tournament database
CREATE DATABASE tournament;
-- Connect to tournament database
\c tournament

-- Create table for players
CREATE TABLE players(
    id serial primary key,
    name text
);

-- Create table for matches
CREATE TABLE matches(
    match serial primary key,
    round integer,
    player_1 integer references players(id),
    player_2 integer references players(id),
    winner integer references players(id)
);

