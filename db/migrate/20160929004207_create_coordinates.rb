class CreateCoordinates < ActiveRecord::Migration[5.0]
  def change
    create_table :coordinates do |t|
      t.string :lat
      t.string :lng

      t.timestamps null: false
    end
  end
end
