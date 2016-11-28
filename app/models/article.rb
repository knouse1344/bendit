class Article < ActiveRecord::Base
	attr_accessible :link, :image, :title
	mount_uploader :image, ArticleUploader
end
