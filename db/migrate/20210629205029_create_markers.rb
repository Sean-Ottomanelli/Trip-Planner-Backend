class CreateMarkers < ActiveRecord::Migration[6.1]
  def change
    create_table :markers do |t|
      t.integer :user_id
      t.integer :attraction_id
      t.boolean :visited
      t.integer :user_rating
      t.integer :urgency

      t.timestamps
    end
  end
end
