class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :category, index: true
      t.references :brand, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
