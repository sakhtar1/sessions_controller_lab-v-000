class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to '/login'  
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    if session[:name] = params[:name]
      session.delete :name
    else
      session[:name] == nil
    end
  end

end