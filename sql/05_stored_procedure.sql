-- ============================================
-- File: 05_stored_procedure.sql
-- Description: Stored procedures for the system
-- ============================================
USE eSports_db;

-- Stored procedure to retrieve all matches for a specific player
DELIMITER \\ 

CREATE PROCEDURE GetPlayerMatches(IN input_player_id INT) BEGIN
SELECT
    p1.user_name AS player1,
    p2.user_name AS player2,
    m.match_date
FROM
    matches m
    JOIN players p1 ON m.player1_id = p1.player_id
    JOIN players p2 ON m.player2_id = p2.player_id
WHERE
    m.player1_id = input_player_id
    OR m.player2_id = input_player_id
ORDER BY
    m.match_date;

END // 

DELIMITER;

-- Example usage of the stored procedure
CALL GetPlayerMatches(1);