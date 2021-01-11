class ChangeTypeToSpaceType < ActiveRecord::Migration[6.1]
  def change
    rename_column(:spaces, :type, :space_type)
  end
end
