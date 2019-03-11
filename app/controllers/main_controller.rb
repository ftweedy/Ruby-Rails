class MainController < ApplicationController
  def question
    render html: "what did you have for dinner yesterday?" #.html_safe
  end

  def number
    render html: "42" #.html_safe
  end

  def answers
      @number = params[:number]
      # render "answers.html.erb"
      @test = 2
  end

  def team
     @team = params[:team]
    # render html: "Luke, Francis" #.html_safe
  end
end
