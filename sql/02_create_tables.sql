-- ============================================
-- File: 02_create_tables.sql
-- Description: Creates all tables for the eSports system
-- ============================================
-- use the database
USE eSports_db;

-- ============================================
-- Table: players
-- Stores player information
-- ============================================
CREATE TABLE players(
    player_id INT AUTO_INCREMENT PRIMARY KEY,  -- unique id for each player
    user_name VARCHAR(100) NOT NULL UNIQUE,  -- players username must be unique
    email VARCHAR(100) NOT NULL UNIQUE,  -- players email must be unique
    rank_points INT DEFAULT 1000 -- starting ranking points
    CHECK (rank_points >= 0),  -- rank points cannot be negative
    join_date DATE NOT NULL -- date player joined the system    
);

-- ============================================
-- Table: games
-- Stores all games available in the system
-- ============================================
CREATE TABLE games(
    game_id INT AUTO_INCREMENT PRIMARY KEY,  -- unique id for each game
    game_name VARCHAR(50) NOT NULL UNIQUE,  -- name of the game(e.g FIFA, COD)
    genre VARCHAR(50) NOT NULL -- type of the game (e.g Sports, shooter)
);

-- ============================================
-- Table: tournaments
-- Stores tournament information and links to games
-- ============================================
CREATE TABLE tournaments(
    tournament_id INT AUTO_INCREMENT PRIMARY KEY,  -- unique id for each tournament
    tournament_name VARCHAR(100) NOT NULL,  -- name of the tournament
    game_id INT NOT NULL,  -- links to the game being played
    prize_pool DECIMAL(10, 2) DEFAULT 0 -- prize money
    CHECK(prize_pool >= 0),  -- prize cannot be negative
    start_date DATE NOT NULL,  -- when the tournaments begin
    FOREIGN KEY (game_id) REFERENCES games(game_id) -- links to games table
);

-- Drop table (used during development to fix typoerrors that were affecting the other tables)
-- Recreated the tournaments table 
-- DROP TABLE IF EXISTS tournaments;

-- ============================================
-- Table: matches
-- Stores match results between players
-- ============================================
CREATE TABLE matches(
    match_id INT AUTO_INCREMENT PRIMARY KEY,  -- unique id for each match
    tournament_id INT NOT NULL,  -- links to tournaments
    player1_id INT NOT NULL,  -- first player in the match
    player2_id INT NOT NULL,  -- second player of the match
    winner_id INT,  -- winner of the match(it can be null initially)
    match_date DATETIME NOT NULL,  -- date and time of the match
    -- foreign key relationships
    FOREIGN KEY (tournament_id) REFERENCES tournaments(tournament_id),
    FOREIGN KEY (player1_id) REFERENCES players(player_id),
    FOREIGN KEY (player2_id) REFERENCES players(player_id),
    FOREIGN KEY (winner_id) REFERENCES players(player_id)
);

-- ============================================
-- Table: player_tournaments
-- Links players to tournaments (many-to-many)
-- ============================================
CREATE TABLE player_tournament(
    id INT AUTO_INCREMENT PRIMARY KEY,  -- unique record id
    player_id INT NOT NULL,  -- references a player
    tournament_id INT NOT NULL,  -- references a tournament
    score INT DEFAULT 0,  -- player's score in tournament
    position INT,   -- final ranking position
    
    -- foreign key relationships
    FOREIGN KEY (player_id) REFERENCES players(player_id),
    FOREIGN KEY (tournament_id) REFERENCES tournaments(tournament_id)
);