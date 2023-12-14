mysql> use music_store;
Database changed
mysql> create table Albums(
    -> AlbumID INT PRIMARY KEY,
    -> Title VARCHAR(100),
    -> ReleaseYear INT,
    -> Genre VARCHAR(50),
    -> Price DECIMAL(10, 2),
    -> StockQuantity INT
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> create table Artist(
    -> ArtistID INT PRIMARY KEY,
    -> ArtistName VARCHAR(100),
    -> Country VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> SELECT Title, ReleaseYear FROM Albums;
Empty set (0.00 sec)

mysql> SELECT DISTINCT Genre FROM Albums;
Empty set (0.01 sec)

mysql> SELECT ArtistName, Country FROM Artist;
Empty set (0.00 sec)

mysql> SELECT Title FROM Albums WHERE ReleaseYear = 2022;
Empty set (0.00 sec)

mysql> INSERT INTO Albums VALUES(11, "Greatest Hits", 2023, 'Various', 15.00, 50);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Artist VALUES(8, 'New Artist', 'Canada');
Query OK, 1 row affected (0.01 sec)

mysql> UPDATE Albums SET Price = 20.00 WHERE Genre = 'Pop';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> UPDATE Albums SET StockQuantity = StockQuantity + 10 WHERE Title = 'Thriller';
Query OK, 0 rows affected (0.01 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> DELETE FROM Albums WHERE Title = 'Dangerous';
Query OK, 0 rows affected (0.00 sec)

mysql> DELETE FROM Artist WHERE ArtistName = 'Old Artist';
Query OK, 0 rows affected (0.00 sec)