class RpsController < ApplicationController
  def throw
    @user_move = params[:sign]
    @computer_move = ["rock","paper","scissors"].sample
    @result = "You win or you lose"

        if @user_move == @computer_move
            @result = "You Tied"
        elsif @user_move == "paper" && @computer_move == "rock"
            @result = "You Win"
        elsif @user_move == "paper" && @computer_move == "scissors"
            @result = "You Lose"
        elsif @user_move == "scissors" && @computer_move == "rock"
            @result = "You Lose"
        elsif @user_move == "scissors" && @computer_move == "paper"
            @result = "You Win"
        elsif @user_move == "rock" && @computer_move == "paper"
            @result = "You Lose"
        elsif @user_move == "rock" && @computer_move == "scissors"
            @result = "You Win"
        end

    render("rps.html.erb")
  end
end