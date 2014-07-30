class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :year
      t.string :model
      t.integer :year
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
