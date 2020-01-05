class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.boolean :pets
      t.text :description
      t.string :amenities
      t.string :photo

      t.timestamps
    end
  end
end
