class Comment < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :description
      t.integer :listing_id
      t.timestamps
    end
  end
end
