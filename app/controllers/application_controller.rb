class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================
  def homepage
    render ({ :template => "game_templates/rules.html.erb"})
  end

  def play_rock
    # redirect_to("https://www.google.com")
    render ({ :template => "game_templates/user_rock.html.erb"})
  end

  def play_paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "won"
    elsif @computer_move == "paper"
      @outcome = "tied"
    elsif @computer_move == "scissors"
      @outcome = "lost"
    end

    render ({ :template => "game_templates/user_paper.html.erb"})
  end

  def play_scissors
    render ({ :template => "game_templates/user_scissors.html.erb"})
  end
end
