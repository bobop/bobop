class Image < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x50>" },
       :storage => :s3,
       :s3_credentials => S3_CREDENTIALS,
       :path => "/:style/:id/:filename"
end
