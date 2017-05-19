class CreateAboutpages < ActiveRecord::Migration
  def change
    create_table :aboutpages do |t|
      t.text :content
      t.string :image

      t.timestamps null: false
    end
  end
end
