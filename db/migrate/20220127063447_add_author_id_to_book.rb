class AddAuthorIdToBook < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :author, null: false, foreign_key: true
    add_column :books, :index, :integer
  end
end
