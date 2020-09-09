class AddQuantityToCartItems < ActiveRecord::Migration[6.0]
  def change
    add_column :cart_items, :quantity, :string
    add_column :cart_items, :integer, :string
  end
end
