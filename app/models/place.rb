class Place < ApplicationRecord
	validates :name, presence: true
	validates :adress, length: { maximum: 50 }

	belongs_to :category
	has_many :comments
	belongs_to :owner
end
