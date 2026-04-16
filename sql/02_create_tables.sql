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
     player_id INT AUTO_INCREMENT PRIMARY KEY, -- unique id for each player
     user_name VARCHAR(100) NOT NULL UNIQUE, -- players username must be unique
     email VARCHAR(100) NOT NULL UNIQUE, -- players email must be unique
     rank_points INT DEFAULT 1000  -- starting ranking points
        CHECK (rank_points >= 0), -- rank points cannot be negative
     join_date DATE NOT NULL -- date player joined the system    
);

-- ============================================
-- Table: games
-- Stores all games available in the system
-- ============================================

CREATE TABLE games(
game_id INT AUTO_INCREMENT PRIMARY KEY, -- unique id for each game
game_name VARCHAR(50) NOT NULL UNIQUE, -- name of the game(e.g FIFA, COD)
genre VARCHAR(50) NOT NULL -- type of the game (e.g Sports, shooter)
);