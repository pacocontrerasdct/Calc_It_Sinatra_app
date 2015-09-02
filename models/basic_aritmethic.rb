class Arithmetics

  attr_accessor :num1, :num2, :result
  
  def initialize  
    @num1 = num1
    @num2 = num2
    @result = result
  end
  
  def sum num1, num2
    result = num1 + num2
  end

  def rest num1, num2
    result = num1 - num2
  end

  def multi num1, num2
    result = num1 * num2
  end

  def div num1, num2
    result = num1 / num2
  end

end