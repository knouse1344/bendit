class AddViewsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :views, :integer
  end
end
