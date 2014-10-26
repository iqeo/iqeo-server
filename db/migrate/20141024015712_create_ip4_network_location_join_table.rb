class CreateIp4NetworkLocationJoinTable < ActiveRecord::Migration
  def change
    create_join_table :ip4_addresses, :locations do |t|
      # t.index [:ip4_address_id, :location_id]
      t.index [:location_id, :ip4_address_id], unique: true, name: 'ip4_address_location'
    end
  end
end
