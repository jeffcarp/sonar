class SessionsController < ApplicationController

  def create
    session[:person_id] = 537 
    cookies.permanent.signed[:person_id] = 537 

    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session.delete :person_id
    cookies.delete :person_id

    redirect_to root_url, :notice => "Signed out!"
  end

end
