class Scores

  attr_accessor :user_1, :user_2, :got_it_right

  def initialize(u1, u2)
    @user_1 = u1
    @user_2 = u2
    @got_it_right = nil
  end

  def tally_points
    if @user_1.my_turn == true && @got_it_right == false
      @user_1.score -=1
    end
    
    if @user_2.my_turn == true && @got_it_right == false
      @user_2.score -= 1
    end

    if @user_1.score == 0
      puts "#{@user_1}lost." 
      puts "#{@user_2} wins with a score of #{@user_2.score}/3."
    end

    if @user_2.score == 0
      puts "#{@user_2} lost."
      puts "#{@user_1} wins with a score of #{@user_1.score}/3."
    end
    
    if @user_1.score > 0 && @user_2.score > 0 
      puts "#{@user_1}: #{@user_1.score}/3 vs #{@user_2}: #{@user_2.score}/3."
    end
  end

  def end_round
    self.tally_points
    
    if @user_1.my_turn == true
     puts "P1 Turn over"
      @user_1.my_turn = false
      @user_2.my_turn = true
    elsif @user_2.my_turn == true
      puts "P2 turn over"
      @user_1.my_turn = true
      @user_2.my_turn = false
    end



  end
end