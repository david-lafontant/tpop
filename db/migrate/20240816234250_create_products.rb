class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2 , default: 0.00, 
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
