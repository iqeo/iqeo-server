ActiveAdmin.register Ip4Address do

  permit_params :address, :ip4_network_id

end
