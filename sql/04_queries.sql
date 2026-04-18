-- ============================================
-- File: 04_queries.sql
-- Description: Queries for retrieving and analysing data
-- ============================================
-- use the esports database
USE esports_db;

-- ============================================
-- Get players ordered by ranking points (highest first)
-- The results show the best player to the last player
SELECT
    user_name,
    rank_points
FROM
    players
ORDER BY
    rank_points DESC;

-- ============================================
-- Show tournaments with their associated games
SELECT
    t.tournament_name AS tournament_name,
    g.game_name
FROM
    tournaments t
    JOIN games g ON t.game_id = g.game_id
ORDER BY
    t.tournament_name;

-- ============================================
-- Show match history with player names
SELECT
    p1.user_name AS player1,
    p2.user_name AS player2,
    m.match_date
FROM
    matches m
    JOIN players p1 ON m.player1_id = p1.player_id
    JOIN players p2 ON m.player2_id = p2.player_id
ORDER BY
    m.match_date;

-- ============================================
