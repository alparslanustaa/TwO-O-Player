# Create a 2-Player math game where players take turns to answer simple math addition problems. 
# A new math question is generated for each turn by picking two numbers between 1 and 20. 
# The player whose turn it is is prompted the question and must answer correctly or lose a life.

###

# Both players start with 3 lives. 
# They lose a life if they mis-answer a question. 
# At the end of every turn, the game should output the new scores for both players, so players know where they stand.

# The game doesn’t end until one of the players loses all their lives. 
# At this point, the game should announce who won and what the other player’s score is.\


# Task 1: Extract Nouns for Classes

Game
 - player 1 / player 2
 - current player

 - turn manager (fn)
 - current score (fn)
 - winner (fn)

Question
 - num1
 - num2
 - answer (@num1 + @num2)

Player
 - lives (instance variable)
 - wrong (fn)
