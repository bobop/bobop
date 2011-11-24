class Post < ActiveRecord::Base
                
  def to_param
    "#{slug}"
  end

  def slug
  	"#{id}-#{title.gsub(/[^a-z0-9]+/i, '-')}"
  end
  
  def date
    created_at.strftime("%d %b %y")
  end
  
end
