class AddPhotoToProducts < ActiveRecord::Migration
  def change
  	add_attachment :products, :photo
  	add_attachment :microposts, :photo
  end
end
