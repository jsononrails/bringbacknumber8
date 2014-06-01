class AddCommentsIndexToEntries < ActiveRecord::Migration
  def change
    add_index :entries, :comment
  end
end
