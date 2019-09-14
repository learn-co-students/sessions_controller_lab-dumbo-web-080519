class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] != "" && params[:name] != nil
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name if session[:name]
  end

end
