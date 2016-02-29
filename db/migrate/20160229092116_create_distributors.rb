class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.string :name
      t.string :url
      t.text :notes
      t.string :contact_name
      t.string :contact_email
      t.string :email
      t.string :phone_number
      t.string :image_url

      t.timestamps null: false
    end
  end
end
