USE Project; 

INSERT INTO Patron(Winnings, Losses, Net_Profit, Patron_type, Games_Played, Perks)
VALUES
(100, 1000, -900, "regular", 1, NULL), 
(4000, 200, 3800, "premium", 35, "Free Bathrooms"), 
(12038, 12, 12026, "regular", 103, NULL);

INSERT INTO Winnings(Patron_id, amount_won, [table], game, game_id)
VALUES
(), 
(), 
();

INSERT INTO Losses(Patron_id, amount_lost, [table], game, game_id)
VALUES
(), 
(), 
();