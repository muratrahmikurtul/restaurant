class Place < ApplicationRecord
	validates :name, presence: true
	validates :adress, length: { maximum: 50 }

	belongs_to :category
	has_many :comments, dependent: :destroy
	belongs_to :owner
	has_many :reservasyons , dependent: :destroy
	has_many :customers, through: :reservasyons
	has_and_belongs_to_many :foods
	has_one :social_profile


	accepts_nested_attributes_for :social_profile

end
