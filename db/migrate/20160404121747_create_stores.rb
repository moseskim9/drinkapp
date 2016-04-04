class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :image
      t.string :address
      t.string :postcode
      t.string :city
      t.string :country

      t.timestamps null: false
    end
  end
end
