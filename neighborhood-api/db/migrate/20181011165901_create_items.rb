class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :user_id
      t.string :borrower_id
      t.string :img_url
      t.string :name
      t.string :description
      t.boolean :availability

      t.timestamps
    end
  end
end
