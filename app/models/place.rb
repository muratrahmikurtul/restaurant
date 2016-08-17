class Place < ApplicationRecord
	validates :name, presence: true
	validates :adress, length: { maximum: 50 }

	belongs_to :category
	has_many :comments, dependent: :destroy
	belongs_to :owner
	has_many :reservasyons
	has_many :reservci, through: :reservasyons, source: :customer
	has_and_belongs_to_many :foods

end
