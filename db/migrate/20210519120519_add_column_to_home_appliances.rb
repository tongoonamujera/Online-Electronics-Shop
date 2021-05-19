class AddColumnToHomeAppliances < ActiveRecord::Migration[6.0]
  def change
    add_column :home_appliances, :cover, :string
  end
end
