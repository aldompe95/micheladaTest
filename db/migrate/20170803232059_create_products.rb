class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :brand, index: true
      t.string :name
      t.string :description
      t.decimal :price
      t.timestamps null: false
    end
  end
end