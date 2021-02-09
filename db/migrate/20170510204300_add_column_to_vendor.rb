class AddColumnToVendor < ActiveRecord::Migration[5.0]
  def change
    add_column :vendors, :company_id, :integer
    add_column :vendors, :store_id, :integer
  end
end
