class Game
  attr_accessor :current_player
  attr_reader :p1, :p2

  def initialize(player1, player2)
    @p1 = player1
    @p2 = player2
    @current_player = @p1
  end

  def new_turn
    puts "***** NEW TURN ******"
    self.current_player === @p1 ? self.current_player = @p2 : self.current_player = @p1
  end

  def current_score
    "#{@p1.name}: #{@p1.lives}/3 vs #{@p2.name}: #{@p2.lives}/3"
  end

  def declare_winner
    if (@p2.lives === 0) 
      puts "#{p1.name} wins with a score of #{@p1.lives}/3"
      puts "****************************************"
      puts "||                                    ||"
      puts "||            GAME OVER!              ||"
      puts "||                                    ||"
      puts "****************************************"
      puts "Good bye"
    else 
      puts "#{p2.name} wins with a score of #{@p2.lives}/3"
      puts "****************************************"
      puts "||                                    ||"
      puts "||            GAME OVER!              ||"
      puts "||                                    ||"
      puts "****************************************"
      puts "Good bye"
    end
  end

end
