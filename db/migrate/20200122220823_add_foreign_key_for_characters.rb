class AddForeignKeyForCharacters < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :characters, :locations
  end
end
