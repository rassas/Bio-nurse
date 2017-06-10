class CreateData < ActiveRecord::Migration[5.0]
  def change
    create_table :data do |t|
      t.string :cart_id

      t.timestamps
    end
  end
end
