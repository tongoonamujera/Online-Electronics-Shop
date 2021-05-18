class CreateCellPhones < ActiveRecord::Migration[6.0]
  def change
    create_table :cell_phones do |t|
      t.string :CellPhoneName
      t.string :Type
      t.string :Memory
      t.string :Condition
      t.string :Location
      t.string :Price

      t.timestamps
    end
  end
end
