
USE Casino; 

INSERT INTO Patron(Net_Profit, Patron_type, Games_Played, Perks)
VALUES
(-900, "regular", 1, NULL), 
(3800, "premium", 35, "Free Bathrooms"), 
(12026, "regular", 103, NULL);

INSERT INTO Game(Number_of_players, table_location, game_desc)
VALUES
(14, 'Blackjack'), 
(5, 'Poker'), 
(15, 'GoFish');

INSERT INTO Winnings(Patron_id, amount_won, table_location)
VALUES
(1, 100, 'AC'), 
(2, 4000, 'AA'), 
(3, 12038, 'AB');

INSERT INTO Losses(Patron_id, amount_lost, table_location)
VALUES
(2, 200, 'AB'), 
(3, 12, 'AA'), 
(1, 1000, 'AC');

INSERT INTO Table_(Table_location, Game_id)
VALUES
('AB', 14), 
('AA', 5), 
('AC', 15);

SELECT * from Patron;
SELECT * from Game;
SELECT * from Winnings;
SELECT * from Losses;
