class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :link
      t.string :title
      t.string :image

      t.timestamps null: false
    end
  end
end
