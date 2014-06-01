class AddNamesEmailIndexToEntries < ActiveRecord::Migration
  def change
    add_index :entries, :firstname
    add_index :entries, :lastname
    add_index :entries, :email
  end
end
