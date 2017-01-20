class AddPennameToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :pen_name, :string
  end
end
