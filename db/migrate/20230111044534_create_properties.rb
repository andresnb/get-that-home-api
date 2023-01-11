class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.integer :owner_id
      t.string :name
      t.string :addresse
      t.string :district
      t.string :city
      t.string :country
      t.string :description
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :area
      t.boolean :pets
      t.money :price
      t.money :maintanance
      t.integer :operation_type
      t.integer :property_type

      t.timestamps
    end
  end
end
