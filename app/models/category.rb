class Category < ApplicationRecord
	belongs_to :company
	belongs_to :store

	has_many :vendors
end
