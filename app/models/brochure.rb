class Brochure < ActiveRecord::Base
	mount_uploader :image, ArticleUploader
	mount_uploader :file, GeneralUploader
end
