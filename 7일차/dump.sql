BEGIN TRANSACTION;
CREATE TABLE album (
            id integer primary key autoincrement,
            title text,
            artist_id integer
        );
INSERT INTO "album" VALUES(1,'IV',1);
INSERT INTO "album" VALUES(2,'Who Made Who',2);
CREATE TABLE artist (
            id integer primary key autoincrement,
            name text
        );
INSERT INTO "artist" VALUES(1,'Led Zepplin');
INSERT INTO "artist" VALUES(2,'AC/DC');
CREATE TABLE genre (
            id integer primary key autoincrement,
            name text
        );
INSERT INTO "genre" VALUES(1,'Rock');
INSERT INTO "genre" VALUES(2,'Metal');
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('artist',2);
INSERT INTO "sqlite_sequence" VALUES('genre',2);
INSERT INTO "sqlite_sequence" VALUES('album',2);
INSERT INTO "sqlite_sequence" VALUES('track',4);
CREATE TABLE track (
            id integer primary key autoincrement,
            title text,
            length integer,
            count integer,
            rating integer,
            album_id integer,
            genre_id integer
        );
INSERT INTO "track" VALUES(1,'Black Dog',NULL,NULL,NULL,1,1);
INSERT INTO "track" VALUES(2,'Stairway',NULL,NULL,NULL,1,2);
INSERT INTO "track" VALUES(3,'About to Rock',NULL,NULL,NULL,2,1);
INSERT INTO "track" VALUES(4,'Who Made Who',NULL,NULL,NULL,2,2);
COMMIT;
