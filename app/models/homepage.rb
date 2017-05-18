class Homepage < ActiveRecord::Base
	mount_uploader :imageone, GeneralUploader
	mount_uploader :imagetwo, GeneralUploader
	mount_uploader :imagethree, GeneralUploader
end
