class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :stocks, :user_id
  end
end
