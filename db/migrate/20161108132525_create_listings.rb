class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :picture
      t.string :description
      t.decimal :price
      t.integer :category_id
      t.integer :user_id
      t.timestamp
    end

    create_table :contacts do |t|
      t.integer :listing_id
      t.integer :user_id
      t.text :message
      t.timestamp
    end

    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :is_admin
      t.timestamp
    end

    create_table :categories do |t|
      t.string :title
      t.timestamp
    end

  end
end
