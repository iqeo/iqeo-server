ActiveAdmin.register Ip4Network do

  permit_params :name, :desc, :address, :mask

  show do
    attributes_table do
      row :id
      row :name
      row :desc
      row :address
      row :mask
      row :created_at
      row :updated_at
    end
    panel 'Locations' do
      table_for ip4_network.locations do
        column( :id ) { |item| auto_link item, item.id }
        column :name
        column :desc
      end
    end
    panel 'Addresses' do
      table_for ip4_network.ip4_addresses do
        column( :id ) { |item| auto_link item, item.id }
        column :address
      end
    end
  end

end
