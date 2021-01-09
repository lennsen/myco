class CreateSpaces < ActiveRecord::Migration[6.1]
  def change
    create_table :spaces do |t|
      t.string :title
      t.text :description
      t.string :type
      t.string :address
      t.string :photo_url
      t.integer :price_per_month
      t.string :location

      t.timestamps
    end
  end
end
