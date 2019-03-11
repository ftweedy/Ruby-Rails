class GameController < ApplicationController
  def try
    cookies.signed[:secret_num] = rand(100) if cookies.signed[:secret_num].blank? #target value
    cookies.signed[:tries] = 0 if cookies[:tries].blank? #counter
    @tries = cookies[:tries].to_i
    @user_name = cookies[:user]

    @num = params[:num] #user entry

    if (@num == cookies[:secret_num])
        @result = "Win"
        cookies[:secret_num] = rand(100)
        @tries = 0
    elsif (@num > cookies[:secret_num])
        @result = "High"
        @tries += 1
    elsif (@num < cookies[:secret_num])
        @result = "Low"
        @tries += 1
    end
    cookies.signed[:tries] = @tries
  end

  def reset
      cookies[:tries] = 0
      cookies.signed[:secret_num] = rand(100)
  end

  def user
      # @user = params[:user]
      cookies.signed[:user] = params[:user]
      @user_name = cookies[:user]
  end


end
