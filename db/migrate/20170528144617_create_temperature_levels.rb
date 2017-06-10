class CreateTemperatureLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :temperature_levels do |t|
      t.integer :data_id
      t.float :val

      t.timestamps
    end
  end
end
