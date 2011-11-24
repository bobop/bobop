class Project < ActiveRecord::Base
  belongs_to :client
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x50>" },
       :storage => :s3,
       :s3_credentials => S3_CREDENTIALS,
       :path => "projects/:style/:id/:filename"
  has_attached_file :screenshot, :styles => { :medium => "580x580>", :thumb => "100x100>" },
      :storage => :s3,
      :s3_credentials => S3_CREDENTIALS,
      :path => "screenshots/:style/:id/:filename"

  def to_param
    "#{slug}"
  end

  def slug
    "#{id}-#{name.gsub(/[^a-z0-9]+/i, '-')}"
  end

end
