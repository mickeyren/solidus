class CreateShippingMethodCategories < ActiveRecord::Migration[4.2]
  def change
    create_table :spree_shipping_method_categories do |t|
      t.integer :shipping_method_id, null: false
      t.integer :shipping_category_id, null: false

      t.timestamps null: true
    end

    add_index :spree_shipping_method_categories, :shipping_method_id
    add_index :spree_shipping_method_categories, :shipping_category_id
  end
end
