class PagesController < ApplicationController
  
  def home
    @tweets = Twitter.user_timeline("bobop", :count => 3)
  end

  def about
  end

  def contact
  end

end
