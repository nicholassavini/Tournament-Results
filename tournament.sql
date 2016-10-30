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
    winner integer references players(id),
    loser integer references players(id)
);

CREATE VIEW standings AS
    SELECT
    id,
    name,
    SUM(CASE
        WHEN players.id = matches.winner THEN 1
        ELSE 0
    END) AS wins,
    COUNT(matches) AS matches
    FROM players
    LEFT OUTER JOIN matches
    ON players.id = matches.winner
    OR players.id = matches.loser
    GROUP BY id
    ORDER BY wins DESC;