class AddCountryAndProvincestateIndexToEntries < ActiveRecord::Migration
  def change
    add_index :entries, :country
    add_index :entries, :provincestate
  end
end
