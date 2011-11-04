class Project < ActiveRecord::Base
  belongs_to :client
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :screenshot, :styles => { :medium => "580x580>", :thumb => "100x100>" }
end
