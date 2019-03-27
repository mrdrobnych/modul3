class Hotel < ApplicationRecord

  	mount_uploader :photo, PhotoUploader

	has_many :rooms
	has_one :contact
end
