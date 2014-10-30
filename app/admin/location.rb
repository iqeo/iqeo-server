ActiveAdmin.register Location do

  # belongs_to :org

  permit_params :name, :desc, :org_id

  show do
    attributes_table do
      row :id
      row :name
      row :desc
      row :org_id
      row :created_at
      row :updated_at
    end
    panel 'Networks' do
      table_for location.ip4_networks do
        column( :id ) { |item| auto_link item, item.id }
        column :name
        column :address
      end
    end
  end

end
