class CreateHomeAppliances < ActiveRecord::Migration[6.0]
  def change
    create_table :home_appliances do |t|
      t.string :LaptopName
      t.string :Memory
      t.string :Condition
      t.string :Location
      t.string :Price

      t.timestamps
    end
  end
end
