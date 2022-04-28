DROP DATABASE IF EXISTS Casino;
CREATE DATABASE Casino;
USE Casino; 

CREATE TABLE Patron (
    Patron_id int NOT NULL AUTO_INCREMENT, 
    Net_Profit int NOT NULL,
    Patron_type varchar(10) NOT NULL, 
    Games_Played int, 
    Perks varchar(255), 
    PRIMARY KEY (Patron_id) 
);

CREATE TABLE Employee (
    Employee_id int NOT NULL AUTO_INCREMENT, 
    Weekly_hours int NOT NULL,
    Table_location varchar(2) NOT NULL, 
    PRIMARY KEY (Employee_id),
    FOREIGN KEY (Table_location) REFERENCES Table_(Table_location)
);

CREATE TABLE Game (
    Game_id int NOT NULL AUTO_INCREMENT, 
    Number_of_players int NOT NULL, 
    game_desc varchar(255), 
    PRIMARY KEY (Game_id)
);

CREATE TABLE Winnings (
    transaction_id int NOT NULL AUTO_INCREMENT, 
    Patron_id int NOT NULL, 
    amount_won int NOT NULL, 
    table_location varchar(2) NOT NULL, 
    PRIMARY KEY (transaction_id), 
    FOREIGN KEY (Patron_id) REFERENCES Patron(Patron_id), 
    FOREIGN KEY (Table_location) REFERENCES Table_(Table_location)
);

CREATE TABLE Losses (
    transaction_id int NOT NULL AUTO_INCREMENT, 
    Patron_id int NOT NULL, 
    amount_lost int NOT NULL, 
    table_location varchar(2) NOT NULL,
    PRIMARY KEY (transaction_id), 
    FOREIGN KEY (Patron_id) REFERENCES Patron(Patron_id), 
    FOREIGN KEY (Table_location) REFERENCES Table_(Table_location)
);

CREATE TABLE Table_ (
    Table_location varchar(2) NOT NULL, 
    Game_id int NOT NULL, 
    PRIMARY KEY (Table_location), 
    FOREIGN KEY (Game_id) REFERENCES Game(Game_id)
);
