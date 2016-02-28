class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :location
      t.string :compartment
      t.string :type
      t.text :description
      t.integer :quantity
      t.string :manufacturer
      t.string :distributor
      t.text :notes
      t.string :image_url
      t.string :manual_url

      t.timestamps null: false
    end
  end
end
