class Game 
  def initialize(name)
    @name = name
    @player1 = Player.new('Player1')
    @player2 = Player.new('Player2')
  end

  def start 
    puts "NEW GAME!! Welcome #{@player1.name} and #{player2.name}"
    turn
  end

  def game_status
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.lives}/3"
    puts 'GAME-OVER!!'
    puts 'Good bye!'
    exit(0)
  end

  def score
    if @player1.is_dead
      winner(@player2)
    elsif @player2.is_dead
      winner(@player1)
    end
  end

  def turn
    @player1.new_question
    score
    @player2.new_question
    score
    show_status
    puts 'NEW-GAME'
    turn
  end
end