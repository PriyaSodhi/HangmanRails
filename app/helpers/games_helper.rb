module GamesHelper
   def show_clue(clue)
    formatted_clue = clue.map do |c|
      c.nil? ? '_' : c
    end
    formatted_clue.join(" ")
  end

  def game_progress(game)
    if game.game_in_progress?
      "You have #{game.remaining_lives.to_s} lives remaining"
    elsif game.won?
      "You have won the game"
    else
      "You are hanged"
    end
  end
end
