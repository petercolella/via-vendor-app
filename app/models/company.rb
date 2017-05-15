class Company < ApplicationRecord
	# belongs_to :user

	has_many :stores, dependent: :destroy
	has_many :vendors
	# has_many :categories, through: :stores
end
