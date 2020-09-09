class RemoveIntegerAndQuantityFromCartItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :cart_items, :quantity, :string
    remove_column :cart_items, :integer, :string
  end
end
