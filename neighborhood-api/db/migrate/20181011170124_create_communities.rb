class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|
      t.string :organizer_id
      t.string :name
      t.string :password
      t.string :description
      t.string :img_url
      t.timestamps
    end
  end
end
