class RenameTypeToPropertyTypeOnProperties < ActiveRecord::Migration[7.1]
  def change
    rename_column :properties, :type, :property_types
  end
end