class CreateNoms < ActiveRecord::Migration
  def change
    create_table :noms do |t|
      t.integer :price
      t.integer :votecount
      t.integer :restaurant_id
      t.integer :food_id

      t.timestamps null: false
    end
  end
end
