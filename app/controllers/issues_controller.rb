class IssuesController < ApplicationController

  def index
    @issues = Issue.order('publish_date DESC')
  end

end
