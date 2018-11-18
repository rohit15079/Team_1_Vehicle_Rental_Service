class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :category
      t.string :model
      t.string :manufacturer
      t.string :isAc
      t.integer :cost

      t.timestamps null: false
    end
  end
end
