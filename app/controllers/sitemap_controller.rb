class SitemapController < ApplicationController
  layout nil

  def index
  	headers['Content-Type'] = 'application/xml'
    last_post = Post.last
    @posts = Post.where(:publish => true).all
    @clients = Client.all
    @projects = Project.all
	respond_to do |format|
	  format.xml # sitemap is a named scope
	end
  end
end
