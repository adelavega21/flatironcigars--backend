class AddInventoryToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :inventory, :integer
  end
end
