-- ============================================
-- File: 03_insert_data.sql
-- Description: Inserts mock data into all tables
-- ============================================
USE esports_db;

-- Insert players
INSERT INTO
    players(user_name, email, rank_points, join_date)
VALUES
    ('Alex', 'alex@email.com', 1200, '2025-01-01'),
    ('Sam', 'sam@email.com', 1100, '2025-01-05'),
    ('Jordan', 'jordan@email.com', 1300, '2025-01-10'),
    ('Taylor', 'taylor@email.com', 1250, '2025-01-12'),
    ('Chris', 'chris@email.com', 1000, '2025-01-15'),
    ('Morgan', 'morgan@email.com', 1150, '2025-01-18'),
    ('Jamie', 'jamie@email.com', 1400, '2025-01-20'),
    ('Casey', 'casey@email.com', 1050, '2025-01-22');

-- select to test whether the table is populated
-- SELECT * FROM players;

-- Insert games
INSERT INTO
    games(game_name, genre)
VALUES
    ('FIFA', 'Sports'),
    ('Call of Duty', 'Shooter'),
    ('Street Fighter', 'Fighting'),
    ('League of Legends', 'MOBA'),
    ('Fortnite', 'Battle Royale'),
    ('NBA 2K', 'Sports'),
    ('Tekken', 'Fighting'),
    ('Valorant', 'Shooter');

-- select to test
-- SELECT * FROM games;

-- Insert tournaments
INSERT INTO
    tournaments(tournament_name, game_id, prize_pool, start_date)
VALUES
    ('Summer Cup', 1, 5000.00, '2025-06-01'),
    ('Pro League', 2, 10000.00, '2025-07-01'),
    (
        'Fighting Championship',
        3,
        8000.00,
        '2025-08-01'
    ),
    ('MOBA Masters', 4, 12000.00, '2025-09-01'),
    ('Battle Royale Bash', 5, 15000.00, '2025-10-01'),
    ('NBA Showdown', 6, 7000.00, '2025-11-01'),
    ('Tekken Tournament', 7, 6000.00, '2025-12-01'),
    ('Valorant Cup', 8, 11000.00, '2026-01-01');

-- test tournaments table
-- SELECT * FROM tournaments;
-- Insert matches
-- This table records who played who, in which tournament, and who won
INSERT INTO
    matches(
        tournament_id,
        player1_id,
        player2_id,
        winner_id,
        match_date
    )
VALUES
    (1, 1, 2, 1, '2025-06-01 10:00:00'),
    (1, 3, 4, 3, '2025-06-01 11:00:00'),
    (2, 5, 6, 6, '2025-07-01 12:00:00'),
    (2, 7, 8, 7, '2025-07-01 13:00:00'),
    (3, 1, 3, 3, '2025-08-01 14:00:00'),
    (4, 2, 4, 4, '2025-09-01 15:00:00'),
    (5, 5, 7, 7, '2025-10-01 16:00:00'),
    (6, 6, 8, 6, '2025-11-01 17:00:00');

-- test matches table
-- SELECT * FROM matches;

-- Insert Player participation in tournaments
-- This table shows a record of which players participated in which tournaments, and how well they performed
INSERT INTO
    player_tournament(player_id, tournament_id, score, position)
VALUES
    (1, 1, 10, 1),
    (2, 1, 6, 2),
    (3, 1, 8, 3),
    (4, 1, 5, 4),
    (5, 2, 7, 3),
    (6, 2, 9, 2),
    (7, 2, 12, 1),
    (8, 2, 4, 4);

-- test the player participation in tournaments table
-- SELECT * FROM player_tournament;