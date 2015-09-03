class CalculatorMachine

  attr_accessor :num1, :num2, :num3, :num4, :result
  
  def initialize  
    @num1 = num1
    @num2 = num2
    @num3 = num3
    @num4 = num4
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

  def mortgage num1, num2, num3
    # num1 is Loan, num2 is Apr, num3 is Term
    num2 = (num2 * 0.10) / 12
    brackets = (1 + num2)** num3
    result = num1 * ((num2 * brackets) / brackets - 1)
  end

  def bmi_metric num1, num2
    result = num1 / (num2** 2)
  end

  def bmi_imperial num1, num2
    result = num1 / (num2** 2) * 703
  end

  def trip num1, num2, num3, num4
    # num_1= Distance, num_2=MPG, num_3=Cost, num_4=Speed
 
    # var newFuelEffic = parseFloat(tripNum4) - 60;
    # newMPG = parseFloat(tripNum2) - (newFuelEffic * 2);
    # time = (parseFloat(tripNum1) / parseFloat(tripNum4)) / 60;
    # money = parseFloat(newMPG) * parseFloat(tripNum1) * parseFloat(tripNum3);

    result = 1# 0 
  end



end