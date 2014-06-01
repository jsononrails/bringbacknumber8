class AddLatAndLongToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :lat, :string
    add_column :entries, :long, :string
  end
end
