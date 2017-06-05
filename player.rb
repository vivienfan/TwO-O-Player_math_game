class Player
  TOTAL_LIVES = 3
  attr_accessor :lives
  attr_reader :name, :phrase

  def initialize(name, phrase)
    @name = name
    @phrase = phrase
    @lives = TOTAL_LIVES
  end

  def lose_point!
    @lives -= 1
  end

  def to_s
    "#{@name}: #{@lives}/#{TOTAL_LIVES}"
  end

  def wins
    "#{@name} wins with a socre of #{@lives}/#{TOTAL_LIVES}"
  end

  def say
    "#{@name}: #{@phrase}"
  end
end