class CreateBrochures < ActiveRecord::Migration
  def change
    create_table :brochures do |t|
      t.string :file
      t.string :title
      t.string :image

      t.timestamps null: false
    end
  end
end
