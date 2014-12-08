class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :item_id
      t.string :price

      t.timestamps
    end
  end
end
