class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :restaurant_id
      t.string :street
      t.string :zip
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
