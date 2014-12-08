class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone
      t.string :deliver
      t.string :rating
      t.string :timings
      t.string :category

      t.timestamps
    end
  end
end
