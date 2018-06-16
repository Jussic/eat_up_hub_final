class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
  add_index :microposts, [:user_id, :created_at]
end
