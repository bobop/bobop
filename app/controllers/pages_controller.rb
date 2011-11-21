class PagesController < ApplicationController
  
  def home
    @clients = Client.limit(4).all
    @projects = Project.limit(4).order("completed_at DESC").all
    @posts = Post.limit(4).order("created_at DESC").all
  end

  def services
  end

  def contact
  end

end
