class RemoveTypeFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :item, :string
  end
end
