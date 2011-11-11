class PagesController < ApplicationController
  
  def home
    @clients = Client.limit(4).all
    @projects = Project.limit(4).order("completed_at DESC").all
    @config = YAML::load(File.open("#{Rails.root}/config/s3.yml"))
  end

  def services
  end

  def contact
  end

end
