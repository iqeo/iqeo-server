json.array!(@ip4_addresses) do |ip4_address|
  json.extract! ip4_address, :id, :address, :ip4_network_id
  json.url ip4_address_url(ip4_address, format: :json)
end
