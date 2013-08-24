class IssuesController < ApplicationController

  def index
    if params[:volume]
      @issues = Issue.order('publish_date DESC').where('volume = ?', params[:volume])
    else
      @issues = Issue.order('publish_date DESC')
    end
    @volumes = Issue.uniq.pluck(:volume).sort.reverse
  end

  def new
    @issue = Issue.new
  end

  def edit 
    @issue = Issue.find(params[:id])
  end

  def create
    @issue = Issue.new(params[:issue])

    if @issue.save
      redirect_to issues_url, notice: 'Issue was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @issue = Issue.find(params[:id])

    if @issue.update_attributes(params[:issue])
      redirect_to issues_url, notice: 'Issue was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy
    redirect_to issues_url
  end

end
