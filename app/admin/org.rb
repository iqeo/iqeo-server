ActiveAdmin.register Org do

  permit_params :name

  show do
    attributes_table do
      row :id
      row :name
      row :qtopic
      row :created_at
      row :updated_at
    end
    panel 'Agents' do
      table_for org.agents do
        column( :id ) { |item| auto_link item, item.id }
        column :name
        column :desc
      end
    end
    panel 'Locations' do
      table_for org.locations do
        column( :id ) { |item| auto_link item, item.id }
        column :name
        column :desc
      end
    end
  end

end
