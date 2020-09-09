class AddTypeRatingAndStrengthToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :strength, :string
    add_column :items, :type, :string
    add_column :items, :rating, :integer
  end
end
