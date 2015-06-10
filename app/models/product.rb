class Product < ActiveRecord::Base
	attr_accessible :title, :product_img_url, :product_url, :category_id, :views
	belongs_to :category
end
