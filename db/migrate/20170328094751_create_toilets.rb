class CreateToilets < ActiveRecord::Migration[5.0]
  def change
    create_table :toilets do |t|
      t.string :location_address
      t.float :latitude
      t.float :longitude
      t.string :location_name
      t.references :user, foreign_key: true
      t.string :toilet_type
      t.float :price
      t.boolean :shittable
      t.string :city

      t.timestamps
    end
  end
end
