class AddCellToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :cell, :integer
  end
end
