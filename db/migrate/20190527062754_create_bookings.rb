class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :status
      t.integer :duration
      t.integer :rate_per_hour
      t.references :user, foreign_key: true
      t.references :celebrity, foreign_key: true

      t.timestamps
    end
  end
end
