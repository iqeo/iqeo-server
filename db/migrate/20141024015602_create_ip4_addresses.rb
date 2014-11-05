class CreateIp4Addresses < ActiveRecord::Migration
  def change
    create_table :ip4_addresses do |t|
      t.integer :address
      t.references :ip4_network, index: true
      t.timestamps
    end
    add_index :ip4_addresses, :address, unique: true
  end
end
