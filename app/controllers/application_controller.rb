class ApplicationController < ActionController::Base
  protect_from_forgery
  helper ApplicationHelper
  helper_method :current_user, :current_issue

  private

  def current_user 
    @current_user ||= Person.find(cookies.signed[:person_id]) if cookies.signed[:person_id]
  end

  def current_issue
    Issue.latest_published_issue
  end 
end
