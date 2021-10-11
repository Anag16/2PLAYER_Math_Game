require "./Prompts.rb"
require "./Users.rb"
require "./Scoring.rb"

def new_game
  u1 = Users.new
  u2 = Users.new
  score_keeper = Scores.new(u1, u2)
  u1.my_turn = true

  while u1.score > 0 && u2.score > 0
    prompt = Prompt.new
    score_keeper.got_it_right = prompt.check_answer
    score_keeper.end_round
  end
end

new_game