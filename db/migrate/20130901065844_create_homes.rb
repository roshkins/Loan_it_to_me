class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end
