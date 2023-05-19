class AddColumnToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :address, :string
    add_column :bookings, :city, :string
    add_column :bookings, :state, :string
    add_column :bookings, :zipcode, :string
  end
end
