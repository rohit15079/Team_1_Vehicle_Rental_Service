class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :vehicle_id
      t.date :start_date
      t.date :end_date
      t.string :customer_name
      t.string :customer_contact

      t.timestamps null: false
    end
  end
end
