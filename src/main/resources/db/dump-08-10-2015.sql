PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "status" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" TEXT,
    "colour" TEXT
);
INSERT INTO "status" VALUES(1,'Obejrzane','0x4d1a4dff');
INSERT INTO "status" VALUES(2,'Do obejrzenia','0xff9966');
CREATE TABLE "watcher" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "nick" TEXT,
    "name" TEXT,
    "surname" TEXT
);
INSERT INTO "watcher" VALUES(1,'MJ','Monika','Kowalska');
INSERT INTO "watcher" VALUES(2,'PAW','Paweł','Nowak');

CREATE TABLE movie (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, description TEXT, imageUrl TEXT, movieUrl TEXT, genre TEXT, year TEXT, rating TEXT);
INSERT INTO "movie" VALUES(1,'Ojciec chrzestny','Opowieść o nowojorskiej rodzinie mafijnej','http://1.fwcdn.pl/po/10/89/1089/7196615.3.jpg','http://www.filmweb.pl/Ojciec.Chrzestny','Dramat, Gangsterski','1972','8.7');
INSERT INTO "movie" VALUES(2,'Zielona mila','Emerytowany strażnik więzienny opowiada przyjaciółce o niezwykłym mężczyźnie, którego skazano na śmierć za zabójstwo dwóch 9-letnich dziewczynek.','http://1.fwcdn.pl/po/08/62/862/7517878.3.jpg','http://www.filmweb.pl/Zielona.Mila','Dramat','1999','8.6');
CREATE TABLE movie_status (id INTEGER PRIMARY KEY AUTOINCREMENT, idMovie INTEGER REFERENCES movie (id), idStatus INTEGER REFERENCES status (id));
INSERT INTO "movie_status" VALUES(1,1,1);
INSERT INTO "movie_status" VALUES(2,1,2);
CREATE TABLE movie_watcher (id INTEGER PRIMARY KEY AUTOINCREMENT, idMovie INTEGER REFERENCES movie (id), idWatcher INTEGER REFERENCES watcher (id));
INSERT INTO "movie_watcher" VALUES(1,1,1);
INSERT INTO "movie_watcher" VALUES(2,1,2);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('movie_status',1);
INSERT INTO "sqlite_sequence" VALUES('movie_watcher',2);
COMMIT;
