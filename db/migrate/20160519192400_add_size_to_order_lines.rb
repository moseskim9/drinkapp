class AddSizeToOrderLines < ActiveRecord::Migration
  def change
    add_column :order_lines, :size, :string
  end
end
