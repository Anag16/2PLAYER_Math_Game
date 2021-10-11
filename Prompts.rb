class Prompt

  attr_reader :check_answer

  def initialize()
    @num_1 = rand(1..20)
    @num_2 = rand(1..20)
    @correct_answer = @num_1 + @num_2
    @prompt = "What does #{@num_1} plus #{@num_2} equal?"
    @user_answer = nil
    @got_it_right = nil
  end

  def check_answer
    puts @prompt
    @user_answer = gets.chomp.to_i
    
    if @user_answer == @correct_answer
      puts "Let's goooo!"
      @got_it_right = true
    else
      puts "Psych, that's the wrong number!"
      @got_it_right = false
    end
  end

end