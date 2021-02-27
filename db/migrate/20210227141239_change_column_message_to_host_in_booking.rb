class ChangeColumnMessageToHostInBooking < ActiveRecord::Migration[6.1]
  def change
    change_column(:bookings, :message_to_host, :text)
  end
end
