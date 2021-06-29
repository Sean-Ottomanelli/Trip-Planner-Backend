class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.integer :trip_id
      t.integer :marker_id

      t.timestamps
    end
  end
end
