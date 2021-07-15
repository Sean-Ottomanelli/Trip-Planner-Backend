class CreateMarkers < ActiveRecord::Migration[6.1]
  def change
    create_table :markers do |t|
      t.integer :user_id
      t.boolean :visited
      t.integer :user_rating
      t.integer :urgency
      t.string :name
      t.string :category
      t.float :latitude
      t.float :longitude
      t.text :links
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
