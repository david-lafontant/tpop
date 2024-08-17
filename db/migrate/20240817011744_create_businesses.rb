class CreateBusinesses < ActiveRecord::Migration[7.1]
  def change
    create_table :businesses do |t|
      t.string :business_name
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :adress1
      t.string :adress2
      t.string :city
      t.string :zipcode
      t.string :state
      t.string :country
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
