class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to '/login' 
    else 
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name] = params[:name]
      session.delete :name
    else
      nil
    end
  end

end
