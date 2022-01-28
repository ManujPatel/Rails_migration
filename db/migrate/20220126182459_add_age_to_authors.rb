class AddAgeToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :age, :integer
    add_index :authors, :age
  end
end
