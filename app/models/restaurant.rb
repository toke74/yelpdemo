class Restaurant < ApplicationRecord
	mount_uploader :image, ImageUploader

	has_many :reviews

	validates :name, :address, :phone, :website, :image, presence: true

	validates :phone, format: { 
		with: /\A\(\d\d\d\) \d\d\d\-\d\d\d\d\z/,
    	message: "must be format of (123) 321-7654" }

	validates :website, format: { 
		with: /\Ahttps?:\/\/w{3}.*\z/,
    	message: "must start with https:// or http://" }

	validates :address, format: { 
		with: /\A\d+[^,]+,[^,]+, [A-Z]{2} \d{5}\z/,
    	message: "must be in the format 350 Fifth Avenue, New York, NY 10118" }
    
end
