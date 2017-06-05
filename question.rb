class Question
  LOWER_BOUND = 1
  UPPER_BOUND = 20
  attr_accessor :num0, :num1

  def generate!
    @num0 = rand(LOWER_BOUND..UPPER_BOUND)
    @num1 = rand(LOWER_BOUND..UPPER_BOUND)
    self.to_s
  end

  def answer
    @num0 + @num1
  end

  def compare(x)
    x == self.answer
  end

  def to_s
    "What does #{@num0} plus #{@num1} equal?"
  end
end