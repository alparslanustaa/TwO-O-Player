require "./Game"
require "./Question"
require "./Player"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
game = Game.new(player1, player2)

# Start initial loop
while player1.lives > 0 && player2.lives > 0

  # Generate new question
  question = Question.new
  puts "#{game.current_player.name}: " + question.output
  
  # Get input
  response = gets.chomp.to_i

  # Input checking correct/wrong
  if response === question.answer
    puts "#{game.current_player.name}: YES! You are correct."
  else
    puts "#{game.current_player.name}: Seriously? No!"
    game.current_player.wrong
  end

  # Display score
  puts game.current_score

  # Check winner or restart turn
  if player1.lives === 0 || player2.lives === 0
    game.declare_winner
  else
    game.new_turn
  end
end