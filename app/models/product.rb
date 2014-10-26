class Product < ActiveRecord::Base
	attr_accessible :title, :product, :category_id
	belongs_to :category
end
