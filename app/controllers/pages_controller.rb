class PagesController < ApplicationController
  
  def home
    @clients = Client.limit(5).all
    @projects = Project.limit(5).all
  end

  def services
  end

  def contact
  end

end
