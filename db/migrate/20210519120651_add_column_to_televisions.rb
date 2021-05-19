class AddColumnToTelevisions < ActiveRecord::Migration[6.0]
  def change
    add_column :televisions, :cover, :string
  end
end
