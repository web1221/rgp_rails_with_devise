class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.column(:name, :string)
      t.column(:items, :string)

      t.timestamps()
    end
  end
end
