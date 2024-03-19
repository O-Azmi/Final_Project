class Customer < ApplicationRecord
    belongs_to :province
    has_many :orders
    validates :full_name, :email_address, :address, :username, :password, :zip_code, presence: true
end
