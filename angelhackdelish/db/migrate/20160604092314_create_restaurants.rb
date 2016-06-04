class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.text :name
      t.string :address
      t.text :city
      t.text :state

      t.timestamps null: false
    end
  end
end
