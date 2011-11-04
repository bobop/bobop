class PagesController < ApplicationController
  
  def home
    unless Twitter.rate_limit_status.remaining_hits == 0
      @tweets = Twitter.user_timeline("bobop", :count => 3)
    end
    @clients = Client.all
    @projects = Project.all
  end

  def about
  end

  def contact
  end

end
