class AddColumnToCellPhones < ActiveRecord::Migration[6.0]
  def change
    add_column :cell_phones, :cover, :string
  end
end
