class Product < ActiveRecord::Base
	attr_accessible :name, :description, :category, :photo	
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" },
		:storage => :dropbox,
    	:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	 	:default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end