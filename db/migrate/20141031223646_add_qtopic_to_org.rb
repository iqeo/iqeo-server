class AddQtopicToOrg < ActiveRecord::Migration
  def change
    add_column :orgs, :qtopic, :string
  end
end
