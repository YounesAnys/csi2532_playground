ALTER TABLE "leaderboard_migrated".athletes
RENAME COLUMN is_male TO male_athlete;

INSERT INTO "leaderboard_migrated".schema_migrations (migration, migrated_at) VALUES
('20210222193500-update-athletes.sql', '2021-02-22 19:35:00'); 