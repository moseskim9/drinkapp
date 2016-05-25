class AddMediumToItems < ActiveRecord::Migration
  def change
    add_column :items, :medium_price, :integer
  end
end
