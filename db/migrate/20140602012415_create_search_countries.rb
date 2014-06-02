class CreateSearchCountries < ActiveRecord::Migration
  def change
    create_table :search_countries do |t|
      t.string :country
      t.integer :popularity

      t.timestamps
    end
  end
end
