CREATE TABLE "leaderboard_migrated".schema_migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
);

INSERT INTO "leaderboard_migrated".schema_migrations (migration, migrated_at) VALUES
('20210222184100-create-athletes.sql', '2021-02-22 18:41:00'),
('20210222185500-create-migrations.sql', '2021-02-22 18:55:00');