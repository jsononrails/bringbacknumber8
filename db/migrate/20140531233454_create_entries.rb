class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :country
      t.string :provincestate
      t.text :comment

      t.timestamps
    end
  end
end
