class AddPackageTypeToItem < ActiveRecord::Migration
  def change
    add_column :items, :package_type, :string
  end
end
