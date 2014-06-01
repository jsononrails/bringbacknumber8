class AddShowToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :show, :boolean
  end
end
