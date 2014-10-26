json.array!(@ip4_networks) do |ip4_network|
  json.extract! ip4_network, :id, :name, :desc, :mask
  json.url ip4_network_url(ip4_network, format: :json)
end
