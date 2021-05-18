class CreateHeadphones < ActiveRecord::Migration[6.0]
  def change
    create_table :headphones do |t|
      t.string :LaptopName
      t.string :Memory
      t.string :Condition
      t.string :Location
      t.string :Price

      t.timestamps
    end
  end
end
