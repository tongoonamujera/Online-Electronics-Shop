class AddColumnToHeadphones < ActiveRecord::Migration[6.0]
  def change
    add_column :headphones, :cover, :string
  end
end
