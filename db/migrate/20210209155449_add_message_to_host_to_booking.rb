class AddMessageToHostToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :message_to_host, :string
  end
end
