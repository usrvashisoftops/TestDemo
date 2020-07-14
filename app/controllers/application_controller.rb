class ApplicationController < ActionController::Base
  def current_user
    if(session[:user_id])
      @user || = User.find(session[:user_id])
    rescue => e
      p e  
    end
  end
end
