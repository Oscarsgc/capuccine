class Micropost < ActiveRecord::Base
	belongs_to :user
  	default_scope -> { order('created_at DESC') }
  	validates :content, presence: true
  	validates :user_id, presence: true
  	attr_accessible :content, :title, :photo
  	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
