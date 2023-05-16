class AddCommentToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :comment, :text
  end
end
