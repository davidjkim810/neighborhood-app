class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :description
      t.string :img_url
      t.string :phone_number
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code

      t.timestamps
    end
  end
end
