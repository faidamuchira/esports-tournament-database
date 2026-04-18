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
-- Count how many matches each player played as player1
-- This query joins the matches and players tables to display player names instead of IDs, 
-- while counting how many matches each player has participated in.
SELECT
    p.player_id,
    P.user_name,
    COUNT(*) AS total_matches
FROM
    matches m
    JOIN players p ON m.player1_id = p.player_id
GROUP BY
    p.player_id,
    p.user_name
ORDER BY
    total_matches DESC;

-- ============================================
-- Calculate average ranking points for players above 1000 points
SELECT
    ROUND(AVG(rank_points), 2) AS average_rank
FROM
    players
WHERE
    rank_points > 1000;

-- ============================================
-- Show how long each player has been active (in days) since joining
-- Uses built-in functions NOW() and DATEDIFF()
-- Results are sorted by most active players first
SELECT
    player_id,
    user_name,
    DATEDIFF(NOW(), join_date) AS days_active
FROM
    players
ORDER BY
    days_active DESC;

-- ============================================
-- Show how many days remain until each tournament starts
-- Uses NOW() and DATEDIFF() to calculate time remaining
-- Results are ordered by the closest upcoming tournament
SELECT
    tournament_id,
    tournament_name,
    DATEDIFF(start_date, NOW()) AS days_until_start
from
    tournaments
ORDER BY
    days_until_start ASC;

