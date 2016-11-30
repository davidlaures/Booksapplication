class Book < ActiveRecord::Base
	belongs_to :category
	mount_uploader :couverture, CouvertureUploader
end
