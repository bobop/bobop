class Client < ActiveRecord::Base
  has_many :projects
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x50>" },
       :storage => :s3,
       :s3_credentials => "#{Rails.root}/config/s3.yml",
       :path => "/:style/:id/:filename"
end
