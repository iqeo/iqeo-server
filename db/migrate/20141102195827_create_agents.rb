class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name, index: true
      t.text :desc
      t.references :org, index: true
      t.string :password_digest
      t.string :qtopic
      t.timestamps
    end
  end
end
