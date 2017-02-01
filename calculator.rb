class Calculator

  def initialize(a,b,c)
    if c == "*"
      p a * b
    elsif c == "/"
      p a / b
    elsif c == "+"
      p a + b
    elsif c == "-"
      p a - b
    end
  end

end

Calculator.new(6,7,"*")
