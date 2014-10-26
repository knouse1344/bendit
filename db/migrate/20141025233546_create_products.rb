class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :product
      t.integer :category_id

      t.timestamps
    end
  end
end
