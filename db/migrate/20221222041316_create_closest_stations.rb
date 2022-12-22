class CreateClosestStations < ActiveRecord::Migration[6.0]
  def change
    create_table :closest_stations do |t|
      t.string :line
      t.string :station_name
      t.integer :walk_by
      t.references :rental_building, foreign_key: true
      t.timestamps
    end
  end
end
