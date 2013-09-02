class AddDefaultPriceToItems < ActiveRecord::Migration
  def change
    change_column :items, :price, :decimal, :default => 0.00
  end
end
