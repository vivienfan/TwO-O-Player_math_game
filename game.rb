class Game
  def initialize(player1, player2, question)
    @player1 = player1
    @player2 = player2
    @question = question
  end

  def start_game
    term1 = false
    begin
      puts '----- NEW TURN -----'
      if term1
        puts "#{@player1.name}: #{@question.generate!}"
        print "> "
        answer = $stdin.gets.chomp.to_i
        if !@question.compare(answer)
          @player2.lose_point!
          puts @player1.say
        end
      else
        puts "#{@player2.name}: #{@question.generate!}"
        print "> "
        answer = $stdin.gets.chomp.to_i
        if !@question.compare(answer)
          @player1.lose_point!
          puts @player2.say
        end
      end
      term1 = !term1
    end while game_over?
  end

  def status
    "#{@player1} vs #{@player2}"
  end

  def game_over?
    if @player1.lives > 0 && @player2.lives > 0
      puts status
      true
    else
      if @player1.lives > 0
        puts @player1.wins
      else
        puts @player2.wins
      end
      false
    end
  end
end