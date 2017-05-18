class CreateHomepages < ActiveRecord::Migration
  def change
    create_table :homepages do |t|
      t.text :content
      t.string :imageone
      t.string :imagetwo
      t.string :imagethree

      t.timestamps null: false
    end
  end
end
