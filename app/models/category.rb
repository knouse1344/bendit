class Category < ActiveRecord::Base
	attr_accessible :cat_name
	has_many :products
end
