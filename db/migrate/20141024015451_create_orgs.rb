class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :name

      t.timestamps
    end
    add_index :orgs, :name, unique: true
  end
end
