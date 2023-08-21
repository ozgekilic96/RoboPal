class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :start_date
      t.integer :return_date
      t.integer :total_price
      t.string :confirmation
      t.references :user, null: false, foreign_key: true
      t.references :robot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
