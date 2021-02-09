class User < ApplicationRecord
	has_many :companies
	has_many :stores
	has_many :vendors
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
end
