
CREATE TABLE "leaderboard_migrated".athletes (
  athlete_id int,
  full_name varchar(128),
  birthday date,
  is_male boolean,
  primary key (athlete_id)
);
INSERT INTO "leaderboard_migrated".athletes
  (athlete_id, full_name, birthday, is_male)
VALUES
  (1, 'Mohamed Hilal', '10-14-2000', true),
  (2, 'Andrew Marc', '05-13-1998', true),
  (3, 'Pierre Rimard', '12-05-1960', true),
  (4, 'Yiussef Anys', '07-28-2001', false),
  (5, 'Alyssa Rose', '12-31-1999', false),
  (6, 'Benoid Beaulieu', '10-01-1980', false);


CREATE TABLE "leaderboard_migrated".schema_migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
);
INSERT INTO "leaderboard_migrated".schema_migrations 
    (migration, migrated_at) 
VALUES
    ('20210222184100-create-athletes.sql', '2021-02-28 18:41:00'),
    ('20210222185500-create-migrations.sql', '2021-02-28 18:55:00');


ALTER TABLE "leaderboard_migrated".athletes
RENAME COLUMN is_male TO male_athlete;

INSERT INTO "leaderboard_migrated".schema_migrations 
    (migration, migrated_at) 
VALUES
    ('20210222193500-update-athletes.sql', '2021-02-28 19:35:00'); 
