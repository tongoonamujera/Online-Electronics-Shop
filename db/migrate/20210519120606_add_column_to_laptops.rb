class AddColumnToLaptops < ActiveRecord::Migration[6.0]
  def change
    add_column :laptops, :cover, :string
  end
end
