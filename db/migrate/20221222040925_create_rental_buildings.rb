class CreateRentalBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :rental_buildings do |t|
      t.string :name
      t.integer :price
      t.integer :age
      t.text :address
      t.text :comment
      t.timestamps
    end
  end
end
