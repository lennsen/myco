class RemoveAddressAndPhotoUrlFromSpaces < ActiveRecord::Migration[6.1]
  def change
    remove_column(:spaces, :address)
    remove_column(:spaces, :photo_url)
  end
end
