class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :phone
      t.string :cellphone
      t.string :direction
      t.string :commentaries

      t.timestamps
    end
  end
end
