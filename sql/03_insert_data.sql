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
    ( 'Fighting Championship', 3,  8000.00,
        '2025-08-01'),
    ('MOBA Masters', 4, 12000.00, '2025-09-01'),
    ('Battle Royale Bash', 5, 15000.00, '2025-10-01'),
    ('NBA Showdown', 6, 7000.00, '2025-11-01'),
    ('Tekken Tournament', 7, 6000.00, '2025-12-01'),
    ('Valorant Cup', 8, 11000.00, '2026-01-01');

-- test tournaments table
-- SELECT * FROM tournaments;