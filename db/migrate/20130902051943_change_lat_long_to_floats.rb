class ChangeLatLongToFloats < ActiveRecord::Migration
  def up
    change_table :homes do |t|
      t.change :latitude, :float
      t.change :longitude, :float
    end
  end

  def down
    change_table :homes do |t|
      t.change :latitude, :decimal, precision: 10, scale: 6
      t.change :longitude, :decimal, precision: 10, scale: 6
    end
  end
end
