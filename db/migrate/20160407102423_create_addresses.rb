class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.string :number
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country

      t.timestamps null: false
    end
  end
end
