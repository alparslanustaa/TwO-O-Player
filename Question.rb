class Question
  attr_accessor :num1, :num2, :answer
  
  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = self.num1 + self.num2
  end

  def output()
    "What does #{self.num1} plus #{self.num2} equals?"
  end

end