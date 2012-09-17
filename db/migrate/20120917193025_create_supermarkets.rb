class CreateSupermarkets < ActiveRecord::Migration
  def change
    create_table :supermarkets do |t|
      t.string :name
      t.string :wikipedia_url

      t.timestamps
    end
  end
end
