class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :brand
  belongs_to :user
  attr_accessible :name, :description, :category_id, :brand_id, :user_id
end
