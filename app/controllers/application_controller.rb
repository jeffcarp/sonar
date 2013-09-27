class ApplicationController < ActionController::Base
  protect_from_forgery
  helper ApplicationHelper
  helper_method :current_user, :current_issue

  private

  def current_user 
    # @current_user ||= User.find(cookies.signed[:user_id]) if cookies.signed[:user_id]
    {name: "dude"}
  end

  def current_issue
    Issue.latest_published_issue
  end 
end
