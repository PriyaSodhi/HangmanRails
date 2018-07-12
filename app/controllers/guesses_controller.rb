class GuessesController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @guess = @game.guesses.create(:letter => guess_params[:letter].downcase)

    if @guess.errors.any?
      flash[:notice] = @guess.errors.full_messages
    else
      flash[:success] = "The guess is valid"
    end
    redirect_to game_path(@game)
  end

  private
  def guess_params
    params.require(:guess).permit(:letter)
  end
end
