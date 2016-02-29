class AddPartNumberToItem < ActiveRecord::Migration
  def change
    add_column :items, :part_number, :string
  end
end
