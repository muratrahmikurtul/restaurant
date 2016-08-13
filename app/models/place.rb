class Place < ApplicationRecord
	validates :name, presence: true
	validates :adress, length: { maximum: 50 }

	def category
		Category.find(category_id)
	end
end
