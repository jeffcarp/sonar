class FrontpageController < ApplicationController

  def index
    @breaking = Lede.where('position=?', 'breaking').limit(1).first
    @leader = Lede.where('position=?', 'leader').limit(1).first
    @primary = Lede.where('position=?', 'primary').limit(1).first
    @secondary = Lede.where('position=?', 'secondary').limit(4)

    @blog_articles = Department.find_by_slug('blog').articles.limit(4)
  end

end
