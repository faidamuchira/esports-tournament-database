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