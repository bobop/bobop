class PagesController < ApplicationController
  
  def home
    @clients = Client.limit(5).all
    @projects = Project.limit(5).all
  end

  def about
  end

  def contact
  end

end
