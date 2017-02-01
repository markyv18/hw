class BadConnection

  def initialize
    @goodbye = 0
    puts "HELLO, THIS IS A GROCERY STORE!"

  end

  def lets_talk
    @response = gets.chomp
    chat_cycle
  end

  def chat_cycle
    if @response == nil
      nothing_hello
    elsif @response == "GOODBYE!"
      @goodbye += 1
      if @goodbye == 1
        goodbye1
      else
        goodbye2
        leave_call(true)
      end
    elsif @response == @response.downcase
      downcase_response
    elsif @response == @response.upcase
      upcase_response
    else
      other_response
    end
    lets_talk
  end

  def leave_call(x)
    exit!
  end

  def nothing_hello
    puts "HELLO!!!"
  end

  def downcase_response
    puts "I AM HAVING A HARD TIME HEARING YOU"
  end

  def upcase_response
    puts "NO, THIS IS NOT A PET STORE"
  end

  def goodbye1
    puts "ANYTHING ELSE I CAN HELP WITH?"
  end

  def goodbye2
    puts "THANK YOU FOR CALLING!"
  end

  def other_response
    puts "What was that? I didn't get that."
  end
end

bad = BadConnection.new
bad.lets_talk
