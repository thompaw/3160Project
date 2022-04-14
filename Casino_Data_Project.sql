DROP DATABASE IF EXISTS Casino;
CREATE DATABASE Casino;
USE Casino; 

CREATE TABLE Patron (
Patron_id int NOT NULL AUTO_INCREMENT,
Net_profit int NOT NULL,
patron_type varchar(255) NOT NULL,
Games_played int NOT NULL,
perks varchar(255),
PRIMARY KEY (Patron_id)
);

CREATE TABLE Game (
Game_id int NOT NULL AUTO_INCREMENT,
Number_of_players int NOT NULL,
Game_description varchar(255),
PRIMARY KEY (Game_id)
);

CREATE TABLE tabled (
table_location varchar(2) NOT NULL,
Game_id int NOT NULL,
PRIMARY KEY (table_location),
FOREIGN KEY (Game_id) REFERENCES Game(Game_id)
);

CREATE TABLE Employee (
Employee_id int NOT NULL AUTO_INCREMENT,
Table_location varchar(2) NOT NULL,
Weekly_time datetime,
PRIMARY KEY (Employee_id),
FOREIGN KEY (Table_location) REFERENCES tabled(table_location)
);

CREATE TABLE Winnings (
Transaction_id int NOT NULL AUTO_INCREMENT,
patron_id int NOT NULL,
amount_won int NOT NULL,
Table_location varchar(2),
PRIMARY KEY (Transaction_id),
FOREIGN KEY (patron_id) REFERENCES Patron(Patron_id),
FOREIGN KEY (Table_location) REFERENCES tabled(table_location)
);

CREATE TABLE Losses (
Transaction_id int NOT NULL AUTO_INCREMENT,
patron_id int NOT NULL,
amount_lost int NOT NULL,
Table_location varchar(2) NOT NULL,
PRIMARY KEY (Transaction_id),
FOREIGN KEY (patron_id) REFERENCES Patron(Patron_id),
FOREIGN KEY (Table_location) REFERENCES tabled(table_location)
);



INSERT INTO Patron(Patron_id, Net_profit, patron_type, Games_played, perks) 
VALUES
(1, 100, 'Everyday', 123, 'N/A'),
(2, -50, 'Everyday', 13, 'N/A'),
(3, 140, 'Premium', 18949, '5% extra Winnings');
INSERT INTO Game(Game_id, Number_of_Players, Game_Description)
VALUES
(242422, 2, 'Dice'),
(592758, 2, 'Darts'),
(285902, 5, 'Monopoly');
INSERT INTO tabled(Table_location, Game_id)
VALUES
('AD', 242422),
('AA', 592758),
('AC', 285902);
INSERT INTO Employee(Employee_id, Table_location, Weekly_time)
VALUES
(1, 'AA', 2021-11-21 ),
(2, 'AC', 2022-10-01 ),
(3, 'AD', 2021-05-02 );
INSERT INTO Winnings (Transaction_id, Patron_id, Amount_won, Table_location)
VALUES
(524929, 1, 1538, 'AD'),
(389583, 1, 0, 'AA'),
(384829, 2, 10, 'AC');
INSERT INTO Losses (Transaction_id, Patron_id, Amount_lost, Table_location)
VALUES
(522329, 1, 15, 'AD'),
(389683, 3, 4532, 'AC'),
(384827, 2, 1064, 'AA');


SELECT * from Patron;
SELECT * from Employee;
SELECT * from Winnings;
SELECT * from Losses;
SELECT * from tabled;