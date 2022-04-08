USE Casino; 

INSERT INTO Patron(Winnings, Losses, Net_Profit, Patron_type, Games_Played, Perks)
VALUES
(100, 1000, -900, "regular", 1, NULL), 
(4000, 200, 3800, "premium", 35, "Free Bathrooms"), 
(12038, 12, 12026, "regular", 103, NULL);

INSERT INTO Winnings(Patron_id, amount_won, [table], game, game_id)
VALUES
(1, 100, 'AC', 'GoFish', 3), 
(2, 4000, 'AA', 'Blackjack', 1), 
(3, 12038, 'AB', 'Poker', 2);

INSERT INTO Losses(Patron_id, amount_lost, [table], game, game_id)
VALUES
(2, 200, 'AB', 'Poker', 2), 
(3, 12, 'AA', 'Blackjack', 1), 
(1, 1000, 'AC', 'GoFish', 3);

INSERT INTO Game(Number_of_players, [table], [description])
VALUES
(14, 'AA', 'Blackjack'), 
(5, 'AB', 'Poker'), 
(15 'AC', 'GoFish');