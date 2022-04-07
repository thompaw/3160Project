DROP DATABASE IF EXISTS Casino;
CREATE DATABASE Casino;
USE Casino; 

CREATE TABLE Patrons (
    Account_type varchar(15) NOT NULL
);

CREATE TABLE Account (
    account_id int NOT NULL AUTO_INCREMENT, 
    [name] varchar(40) NOT NULL, 
    last4 int NOT NULL, 
    phone_number int NOT NULL, 
    total_balance int NOT NULL, 
    PRIMARY KEY (account_id)
);

CREATE TABLE Winnings (
    account_id int NOT NULL, 
    transaction_id int NOT NULL AUTO_INCREMENT, 
    amount_won int NOT NULL, 
    [table] varchar(2) NOT NULL, 
    game varchar(20) NOT NULL, 
    PRIMARY KEY (transaction_id), 
    FOREIGN KEY (account_id) REFERENCES Account(account_id)
);

CREATE TABLE Losses (
    account_id int NOT NULL, 
    transaction_id int NOT NULL AUTO_INCREMENT, 
    amount_lost int NOT NULL, 
    [table] varchar(2) NOT NULL, 
    game varchar(20) NOT NULL, 
    PRIMARY KEY (transaction_id), 
    FOREIGN KEY (account_id) REFERENCES Account(account_id)
);