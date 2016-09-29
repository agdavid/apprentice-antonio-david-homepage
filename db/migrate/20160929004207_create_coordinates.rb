class CreateCoordinates < ActiveRecord::Migration[5.0]
  def change
    create_table :coordinates do |t|
      t.decimal :lat, precision: 2, scale: 8
      t.decimal :lng, precision: 2, scale: 8

      t.timestamps null: false
    end
  end
end
