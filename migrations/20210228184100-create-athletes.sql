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
  (1, 'Alexandre Pineau', '06-14-2000', true),
  (2, 'Robert Naim', '05-13-1998', true),
  (3, 'Pierre Rofail', '12-05-1960', true),
  (4, 'CaitLin McNaughton', '07-28-2001', false),
  (5, 'Alyssa Rose', '12-31-1999', false),
  (6, 'Michelle Beaulieu', '10-01-1980', false);