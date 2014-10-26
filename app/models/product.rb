class Product < ActiveRecord::Base
	attr_accessible :title, :product
	belongs_to :category
end
