class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.integer :borrower_id
      t.string :img_url
      t.string :name
      t.string :description
      t.boolean :availability
      t.timestamps
    end
  end
end
