class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :product_img_url
      t.string :product_url
      t.integer :category_id

      t.timestamps
    end
  end
end
