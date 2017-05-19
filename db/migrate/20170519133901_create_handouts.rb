class CreateHandouts < ActiveRecord::Migration
  def change
    create_table :handouts do |t|
      t.string :title
      t.string :image
      t.string :file

      t.timestamps null: false
    end
  end
end
