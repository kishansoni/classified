class AddColumnToAdvertisement < ActiveRecord::Migration
  def change
    add_column :advertisements, :title, :string
    add_column :advertisements, :price, :integer
  end
end
