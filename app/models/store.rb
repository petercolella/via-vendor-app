class Store < ApplicationRecord
	has_one :address, :as => :addressable
 	accepts_nested_attributes_for :address

 	belongs_to :user
 	belongs_to :company

 	has_many :vendors
 	has_many :categories
end
