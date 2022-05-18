class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :restaurant, null: false, foreign_key: true
      # Create restaurant_id
      # Create and index for review on restaurant

      t.timestamps
    end
  end
end
