class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.text :desc
      t.references :org, index: true

      t.timestamps
    end
    add_index :locations, :name
  end
end
