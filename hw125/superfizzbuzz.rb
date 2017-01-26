class SFB1
  def sfb
    (1..1000).each do |num|
      reaction = ""
      reaction += "Super" if num % 7 == 0
      reaction += "Fizz" if num % 3 == 0
      reaction += "Buzz" if num % 5 == 0
      reaction = num.to_s if reaction == ""
      p reaction
    end
  end
end

# sfb1 = SFB1.new
# sfb1.sfb

class SFB2
  def sfb(num)
    reaction = ""
      reaction += "Super" if num % 7 == 0
      reaction += "Fizz" if num % 3 == 0
      reaction += "Buzz" if num % 5 == 0
      reaction = num.to_s if reaction == ""
      p reaction
  end
end

# sfb2 = SFB2.new
# p "enter a number"
# num = gets.chomp.to_i
# sfb2.sfb(num)
