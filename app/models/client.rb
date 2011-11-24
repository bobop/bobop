class Client < ActiveRecord::Base
  has_many :projects
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x50>" },
       :storage => :s3,
       :s3_credentials => S3_CREDENTIALS,
       :path => "clients/:style/:id/:filename"
  
  def to_param
    "#{slug}"
  end

  def slug
  	"#{id}-#{name.gsub(/[^a-z0-9]+/i, '-')}"
  end
end
