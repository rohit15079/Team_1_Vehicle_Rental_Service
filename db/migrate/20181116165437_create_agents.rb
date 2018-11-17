class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :orgName
      t.integer :regNo
      t.string :email
      t.string :fName
      t.string :lName
      t.string :locality
      t.string :city
      t.integer :pinCode

      t.timestamps null: false
    end
  end
end
