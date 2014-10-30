class CreateIp4Networks < ActiveRecord::Migration
  def change
    create_table :ip4_networks do |t|
      t.string :name
      t.text :desc
      t.integer :address
      t.integer :mask
      t.timestamps
    end
    add_index :ip4_networks, [ :name, :address ]
  end
end
