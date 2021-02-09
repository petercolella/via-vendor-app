class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :store_phone

      t.timestamps
    end
  end
end
