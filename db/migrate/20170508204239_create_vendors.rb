class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :vendor_name
      t.string :vendor_contact_name
      t.string :vendor_contact_phone
      t.string :vendor_contact_email
      t.string :vendor_logo
      t.string :vendor_website
      t.string :info
      t.string :order_window
      t.string :delivery_window
      t.string :attachment

      t.timestamps
    end
  end
end
