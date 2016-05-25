class AddLargeToItems < ActiveRecord::Migration
  def change
    add_column :items, :large_price, :integer
  end
end
