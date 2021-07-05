class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :name
      t.boolean :completed
      t.text :description

      t.timestamps
    end
  end
end
