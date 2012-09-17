class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :wikipedia_url

      t.timestamps
    end
  end
end
