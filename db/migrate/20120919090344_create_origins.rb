class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|
      t.integer :product_id
      t.integer :brand_id

      t.timestamps
    end
  end
end
