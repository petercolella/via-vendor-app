class Vendor < ApplicationRecord
	has_one :address, as: :addressable
	accepts_nested_attributes_for :address

	# belongs_to :user
	# belongs_to :store
	# belongs_to :category
	belongs_to :company
end
