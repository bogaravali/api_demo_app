class CreateUserBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :user_bookings do |t|

      t.belongs_to :user
      t.belongs_to :book
      t.datetime :checkout_date
      t.datetime :return_date
      t.boolean :returned, default: false
      t.timestamps
    end
  end
end
