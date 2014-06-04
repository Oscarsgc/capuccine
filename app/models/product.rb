class Product < ActiveRecord::Base
  	belongs_to :category
  	belongs_to :user
 	attr_accessible :name, :description, :category_id, :brand_id, :photo
	
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

end
