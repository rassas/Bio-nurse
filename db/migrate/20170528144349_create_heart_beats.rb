class CreateHeartBeats < ActiveRecord::Migration[5.0]
  def change
    create_table :heart_beats do |t|
      t.integer :data_id
      t.float :val

      t.timestamps
    end
  end
end
