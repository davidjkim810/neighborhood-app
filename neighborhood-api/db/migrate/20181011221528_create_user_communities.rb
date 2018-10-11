class CreateUserCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :user_communities do |t|
      t.integer :user_id
      t.integer :community_id
      t.timestamps
    end
  end
end
