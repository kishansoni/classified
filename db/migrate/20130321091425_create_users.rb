class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :salutation
      t.string :address
      t.string :zipcode
      t.string :city
      t.string :province
      t.string :phone
      t.string :url
      t.integer :longitude
      t.integer :latitude

      t.timestamps
    end
  end
end
