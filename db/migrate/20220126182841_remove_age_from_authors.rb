class RemoveAgeFromAuthors < ActiveRecord::Migration[7.0]
  def change
    remove_index :authors, :age
    remove_column :authors, :age, :integer
  end
end
