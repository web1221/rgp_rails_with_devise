class AddColumnLocationId < ActiveRecord::Migration[5.2]
  def change
    add_column(:characters, :location_id, :integer)
  end
end
