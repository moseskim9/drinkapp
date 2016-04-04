class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :image
      t.string :name
      t.integer :price
      t.references :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
