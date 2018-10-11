class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :user_id
      t.string :item_id
      t.string :status
      t.timestamps
    end
  end
end