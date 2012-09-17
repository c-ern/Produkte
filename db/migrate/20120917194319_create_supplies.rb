class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.integer :supermarket_id
      t.integer :origin_id

      t.timestamps
    end
  end
end
