class Item < ApplicationRecord
    belongs_to :brand
    has_many :cart_items
    has_many :carts, through: :cart_items
end
