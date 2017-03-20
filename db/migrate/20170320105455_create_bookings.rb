class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :address
      t.datetime :start_time
      t.datetime :end_time
      t.string :status
      t.references :artist, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
